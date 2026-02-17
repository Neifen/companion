package services_test

import (
	"context"
	"fmt"
	"math"
	"os"
	"path/filepath"
	"runtime"
	"strings"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"
	"github.com/neifen/htmx-login/app/api/services"
	"github.com/neifen/htmx-login/app/api/storage"
	"github.com/neifen/htmx-login/app/api/storage/db"
	"github.com/pkg/errors"
)

// func TestMain(m *testing.M) {
// 	var err error
// 	db, err = newTestDB()
// 	if err != nil {
// 		log.Fatal(err)
// 		os.Exit(1)
// 	}
// 	deferdb.db.Close()

// 	exitCode := m.Run()
// 	os.Exit(exitCode)
// }

const (
	defaultPlanID = 0
	defaultUserID = 0
)

func clearTrackers(db db.DB) error {
	res, err := db.Exec(context.Background(), "DELETE FROM tracking.trackers")
	if err != nil {
		return errors.Wrap(err, "Could not clean up Trackers table")
	}

	affected := res.RowsAffected()

	var count int
	row := db.QueryRow(context.Background(), "SELECT count(*) from tracking.tasks")
	row.Scan(&count)
	if count != 0 {
		return errors.Errorf("tasks should be emty through delete cascade. Was %d instead", count)
	}

	fmt.Printf("Tracker Rows cleaned up: %d\n", affected)
	return nil
}

func clearUsers(db db.DB) error {
	res, err := db.Exec(context.Background(), "DELETE FROM auth.users")
	if err != nil {
		return errors.Wrap(err, "Could not clean up users table")
	}

	affected := res.RowsAffected()
	var count int
	row := db.QueryRow(context.Background(), "SELECT count(*) from auth.refresh_tokens")
	row.Scan(&count)
	if count != 0 {
		return errors.Errorf("refresh_tokens should be emty through delete cascade. Was %d instead", count)
	}

	row = db.QueryRow(context.Background(), "SELECT count(*) from auth.verification_tokens")
	row.Scan(&count)
	if count != 0 {
		return errors.Errorf("verification_tokens table should be emty through delete cascade. Was %d instead", count)
	}

	fmt.Printf("Auth Users Rows cleaned up: %d\n", affected)
	return nil
}

func clearCompanions(db db.DB) error {
	res, err := db.Exec(context.Background(), "DELETE FROM companions.companions")
	if err != nil {
		return errors.Wrap(err, "Could not clean up Plans table")
	}

	affected := res.RowsAffected()

	var count int
	row := db.QueryRow(context.Background(), "SELECT count(*) from companions.companion_items")
	row.Scan(&count)
	if count != 0 {
		return errors.Errorf("companion items should be emty through delete cascade. Was %d instead", count)
	}

	row = db.QueryRow(context.Background(), "SELECT count(*) from companions.plan_companions")
	row.Scan(&count)
	if count != 0 {
		return errors.Errorf("plan companion connection table should be emty through delete cascade. Was %d instead", count)
	}

	fmt.Printf("Companion Rows cleaned up: %d\n", affected)
	return nil
}

func clearPlans(db db.DB) error {
	res, err := db.Exec(context.Background(), "DELETE FROM plans.plans where id != 0")
	if err != nil {
		return errors.Wrap(err, "Could not clean up Plans table")
	}

	affected := res.RowsAffected()

	fmt.Printf("Plans Rows cleaned up: %d\n", affected)
	return nil
}

func getRelativePath(path string) string {
	// Get the directory of this test file
	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	return filepath.Join(dir, "../../..", path)
}

func loadEnv() error {
	envPath := getRelativePath(".env")
	fmt.Printf("env path is: %s\n", envPath)

	err := godotenv.Load(envPath)
	if err == nil {
		return errors.Wrap(err, "error 130: could not load .env")
	}
	return nil
}

func insertSplitVersesPlan(db *pgxpool.Pool) error {
	tx, err := db.Begin(context.Background())
	if err != nil {
		return errors.Wrap(err, "first insert")
	}
	_, err = tx.Exec(context.Background(), `INSERT INTO plans.plans( name, plan_desc)
    VALUES ('split chapters', 'This is like the plan that is shown by default but with long chapters split. Is just a canonical plan')
ON CONFLICT
    DO NOTHING;`)
	if err != nil {
		return errors.Wrap(err, "first insert")
	}

	row := tx.QueryRow(context.Background(), "select max(id) from plans.plans")
	var plansID int32
	err = row.Scan(&plansID)
	if err != nil {
		return errors.Wrap(err, "query plans ID")
	}

	row = tx.QueryRow(context.Background(), "select avg(chapter_word_count) from static.chapters")
	var avg float32
	err = row.Scan(&avg)
	if err != nil {
		return errors.Wrap(err, "query avg")
	}

	rows, err := tx.Query(context.Background(), `    
	select
		c.id,
		c.chapter_word_count as length,
		c.book_name,
		v.ids,
		v.lengths,
		v.start,
		v.stop
    from
    	static.chapters c
    join 
    	(select 
			v.chapter_fk, 
			array_agg(v.id order by v.id) as ids,
			array_agg(v.verse_word_count order by v.id) as lengths, 
			min(v.verse_nr) as start, 
			max(v.verse_nr ) as stop 
		from static.verses v 
		group by v.chapter_fk)
    v on v.chapter_fk = c.id`)
	if err != nil {
		return errors.Wrap(err, "query deets")
	}
	defer rows.Close()

	type chapter struct {
		ID           int
		length       int
		bookName     string
		verseIDS     []int32
		verseLenghts []int32

		verseStart int
		verseStop  int
	}
	var chapters []chapter

	for rows.Next() {
		var chapter chapter
		rows.Scan(&chapter.ID, &chapter.length, &chapter.bookName, &chapter.verseIDS, &chapter.verseLenghts, &chapter.verseStart, &chapter.verseStop)
		chapters = append(chapters, chapter)
	}

	var sum int32
	for _, chapter := range chapters {
		if float32(chapter.length) > (avg * 2) {
			var versesIDS [][]int
			var versesDesc []string
			var versesLengths []int32
			verseLength := int32(0)
			min := 0.0
			max := 0.0
			iter := 0
			var verseIDS []int

			for verseIter, length := range chapter.verseLenghts {
				verseLength += length
				verseIDS = append(verseIDS, verseIter)

				min = math.Min(min, float64(verseIter))
				max = math.Max(max, float64(verseIter))

				if float32(verseLength) > avg || verseIter+1 == len(chapter.verseLenghts) {
					if verseIter+1 == len(chapter.verseLenghts) && float32(verseLength) < (avg*0.75) {
						lastDesc := versesDesc[len(versesDesc)-1]
						splitDesc := strings.Split(lastDesc, "-")
						versesDesc[len(versesDesc)-1] = fmt.Sprintf("%s-%d", splitDesc[0], int(max))
						versesIDS[len(versesIDS)-1] = append(versesIDS[len(versesIDS)-1], verseIDS...)
						versesLengths[len(versesLengths)-1] = versesLengths[len(versesLengths)-1] + verseLength
					} else {
						versesDesc = append(versesDesc, fmt.Sprintf("%s %d-%d", chapter.bookName, int(min), int(max)))
						versesIDS = append(versesIDS, verseIDS)
						versesLengths = append(versesLengths, verseLength)
						max++
						min = max
						iter++
						verseIDS = []int{}
						verseLength = 0
					}
				}
			}

			for insertIter, ids := range versesIDS {
				sum += versesLengths[insertIter]

				_, err = tx.Exec(context.Background(), `
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length, verse_fks, verses) 
			values ($1, $2, $3, $4, $5, $6)
			`, plansID, chapter.ID, versesLengths[insertIter], sum, ids, versesDesc[insertIter])
				if err != nil {
					return errors.Wrap(err, "insert plans.bible_plans")
				}
			}

		} else {
			sum += int32(chapter.length)

			_, err = tx.Exec(context.Background(), `
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length) 
			values ($1, $2, $3, $4)
			`, plansID, chapter.ID, chapter.length, sum)
			if err != nil {
				return errors.Wrap(err, "insert plans.bible_plans")
			}
		}

	}

	err = tx.Commit(context.Background())
	if err != nil {
		return errors.Wrap(err, "commit")
	}
	return nil

}

func newTestService() (*services.Services, db.DB, error) {
	err := loadEnv()
	if err != nil {
		return nil, nil, err
	}

	os.Setenv("POSTGRES_DB", "testing")
	store, db, err := storage.NewDB()
	if err != nil {
		return nil, nil, errors.Wrap(err, "couldnt create new db")
	}

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql"}

	err = execScripts(db, sqlFiles)
	if err != nil {
		return nil, nil, errors.Wrap(err, "couldnt exec script")
	}

	err = insertSplitVersesPlan(db)
	if err != nil {
		return nil, nil, errors.Wrap(err, "couldnt write split verses")
	}

	return services.NewServices(store), db, nil
}

func execScripts(db *pgxpool.Pool, sqlFiles []string) error {
	for _, file := range sqlFiles {
		path := getRelativePath("app/sql/" + file)
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return errors.Wrapf(err, "error reading %s", file)
		}

		res, err := db.Exec(context.Background(), string(authSQL))
		if err != nil {
			return errors.Wrapf(err, "error initializing %s", file)
		}
		aff := res.RowsAffected()
		fmt.Printf("created %s tables, affected Rows: %v \n", file, aff)
	}

	return nil
}
