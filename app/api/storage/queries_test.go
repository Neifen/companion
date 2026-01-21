package storage

import (
	"database/sql"
	"fmt"
	"math"
	"math/rand"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	"github.com/joho/godotenv"
	"github.com/lib/pq"

	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/neifen/htmx-login/app/api/storage/companions"
	"github.com/neifen/htmx-login/app/api/storage/plans"
	"github.com/neifen/htmx-login/app/api/storage/tracking"
	"github.com/pkg/errors"
)

func clearTrackers(db *DB) error {
	res, err := db.db.Exec("DELETE FROM tracking.trackers")
	if err != nil {
		return errors.Wrap(err, "Could not clean up Trackers table")
	}

	affected, err := res.RowsAffected()
	if err != nil {
		return errors.Wrap(err, "Error getting Rows affected")
	}

	var count int
	row := db.db.QueryRow("SELECT count(*) from tracking.tasks")
	row.Scan(&count)
	if count != 0 {
		return errors.Errorf("tasks should be emty through delete cascade. Was %d instead", count)
	}

	fmt.Printf("Tracker Rows cleaned up: %d\n", affected)
	return nil
}

func TestCreateNewDB(t *testing.T) {
	db, err := newTestDB()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	err = db.Tracking.CreateTask(userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=

	rows, err := db.db.Query("SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	var trackers []tracking.TrackerSettings
	for rows.Next() {
		var tracker tracking.TrackerSettings
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.FromDate, &tracker.ToDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	singleTracker := trackers[0]
	from := singleTracker.FromDate
	to := singleTracker.ToDate

	if from.Year() != 2025 && from.Month() != 12 && from.Day() != 26 {
		t.Errorf("From Date is %s, should be 2025-12-26", from)
	}

	if to.Year() != 2026 && to.Month() != 12 && to.Day() != 26 {
		t.Errorf("To Date is %s, should be 2026-12-26", to)
	}

	// ----  check tasks -----=

	rows, err = db.db.Query("SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}

	var tasks []tracking.TrackerModel
	for rows.Next() {
		var task tracking.TrackerModel
		rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
		tasks = append(tasks, task)
	}

	if len(tasks) != 1189 {
		t.Errorf("There should be 1189, instead was %d", len(tasks))
	}

	first := tasks[0].ReadBy
	last := tasks[len(tasks)-1].ReadBy

	if first.Year() != 2025 && first.Month() != 12 && first.Day() != 26 {
		t.Errorf("First ReadyBy Date is %s, should be 2025-12-26", first)
	}

	if last.Year() != 2026 && last.Month() != 12 && last.Day() != 26 {
		t.Errorf("Last ReadyBy Date is %s, should be 2026-12-26", last)
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}

		defer db.db.Close()
	})
}

func TestCreateNewDBDouble(t *testing.T) {
	db, err := newTestDB()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}
	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	err = db.Tracking.CreateTask(userID, 0, "2020-12-26", "2021-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	err = db.Tracking.CreateTask(userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=

	rows, err := db.db.Query("SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	var trackers []tracking.TrackerSettings
	for rows.Next() {
		var tracker tracking.TrackerSettings
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.FromDate, &tracker.ToDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	singleTracker := trackers[0]
	from := singleTracker.FromDate
	to := singleTracker.ToDate

	if from.Year() != 2025 && from.Month() != 12 && from.Day() != 26 {
		t.Errorf("From Date is %s, should be 2025-12-26", from)
	}

	if to.Year() != 2026 && to.Month() != 12 && to.Day() != 26 {
		t.Errorf("To Date is %s, should be 2026-12-26", to)
	}

	// ----  check tasks -----=

	rows, err = db.db.Query("SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}

	var tasks []tracking.TrackerModel
	for rows.Next() {
		var task tracking.TrackerModel
		rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
		tasks = append(tasks, task)
	}

	if len(tasks) != 1189 {
		t.Errorf("There should be 1189, instead was %d", len(tasks))
	}

	first := tasks[0].ReadBy
	last := tasks[len(tasks)-1].ReadBy

	if first.Year() != 2025 && first.Month() != 12 && first.Day() != 26 {
		t.Errorf("First ReadyBy Date is %s, should be 2025-12-26", first)
	}

	if last.Year() != 2026 && last.Month() != 12 && last.Day() != 26 {
		t.Errorf("Last ReadyBy Date is %s, should be 2026-12-26", last)
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}

		defer db.db.Close()
	})
}

func TestCreateNewDBDifferentDays(t *testing.T) {
	db, err := newTestDB()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	var planID int
	err = db.db.QueryRow("select max(id) from plans.plans").Scan(&planID)
	if err != nil {
		t.Fatalf("Getting max id failed: %s", err)
	}
	timeRanges := []int{2, 3, 10, 100, 200, 300, 400, 500, 600}
	//timeRanges := []int{1000}

	for _, timeRange := range timeRanges {
		begin := time.Now().AddDate(0, 0, rand.Intn(500))
		nowString := begin.Format("2006-01-02")
		in100Days := begin.AddDate(0, 0, timeRange)
		in100DaysString := in100Days.Format("2006-01-02")

		err = db.Tracking.CreateTask(userID, planID, nowString, in100DaysString)
		if err != nil {
			t.Fatalf("CreateTask failed: %s", err)
		}

		// ----  check tracker -----=

		rows, err := db.db.Query("SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}

		var trackers []tracking.TrackerSettings
		for rows.Next() {
			var tracker tracking.TrackerSettings
			rows.Scan(&tracker.ID, &tracker.UserID, &tracker.FromDate, &tracker.ToDate)
			trackers = append(trackers, tracker)
		}

		if len(trackers) != 1 {
			t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
		}

		singleTracker := trackers[0]
		from := singleTracker.FromDate
		to := singleTracker.ToDate

		if from.Year() != begin.Year() && from.Month() != begin.Month() && from.Day() != begin.Day() {
			t.Errorf("From Date is %s, should be %s", from, begin)
		}

		if to.Year() != in100Days.Year() && to.Month() != in100Days.Month() && to.Day() != in100Days.Day() {
			t.Errorf("To Date is %s, should be %s", to, in100Days)
		}

		// ----  check tasks -----=
		rows, err = db.db.Query("SELECT array_agg(id)::varchar, read_by FROM tracking.tasks group by read_by order by read_by")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}

		count := 0
		for rows.Next() {
			var readBy time.Time
			var id string
			rows.Scan(&id, &readBy)
			fmt.Printf("%s for %s\n", readBy.Format("2006-01-02"), id)
			count++
		}

		if count != timeRange {
			t.Errorf("There should be %d, instead was %d", timeRange, count)
		}
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}

		defer db.db.Close()
	})
}

// func TestMain(m *testing.M) {
// 	var err error
// 	db, err = newTestDB()
// 	if err != nil {
// 		log.Fatal(err)
// 		os.Exit(1)
// 	}
// 	defer db.db.Close()

// 	exitCode := m.Run()
// 	os.Exit(exitCode)
// }

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

func insertSplitVersesPlan(db *sql.DB) error {
	tx, err := db.Begin()
	if err != nil {
		return errors.Wrap(err, "first insert")
	}
	_, err = tx.Exec(`INSERT INTO plans.plans( name, plan_desc)
    VALUES ('split chapters', 'This is like the plan that is shown by default but with long chapters split. Is just a canonical plan')
ON CONFLICT
    DO NOTHING;`)
	if err != nil {
		return errors.Wrap(err, "first insert")
	}

	row := tx.QueryRow("select max(id) from plans.plans")
	var plansID int32
	err = row.Scan(&plansID)
	if err != nil {
		return errors.Wrap(err, "query plans ID")
	}

	row = tx.QueryRow("select avg(chapter_word_count) from static.chapters")
	var avg float32
	err = row.Scan(&avg)
	if err != nil {
		return errors.Wrap(err, "query avg")
	}

	rows, err := tx.Query(`    
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

	type chapter struct {
		ID             int
		length         int
		bookName       string
		verseIDSPq     pq.Int32Array
		verseLenghtsPq pq.Int32Array
		verseIDS       []int32
		verseLenghts   []int32

		verseStart int
		verseStop  int
	}
	var chapters []chapter

	for rows.Next() {
		var chapter chapter
		rows.Scan(&chapter.ID, &chapter.length, &chapter.bookName, &chapter.verseIDSPq, &chapter.verseLenghtsPq, &chapter.verseStart, &chapter.verseStop)
		chapter.verseIDS = []int32(chapter.verseIDSPq)
		chapter.verseLenghts = []int32(chapter.verseLenghtsPq)
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

				_, err = tx.Exec(`
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length, verse_fks, verses) 
			values ($1, $2, $3, $4, $5, $6)
			`, plansID, chapter.ID, versesLengths[insertIter], sum, pq.Array(ids), versesDesc[insertIter])
				if err != nil {
					return errors.Wrap(err, "insert plans.bible_plans")
				}
			}

		} else {
			sum += int32(chapter.length)

			_, err = tx.Exec(`
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length) 
			values ($1, $2, $3, $4)
			`, plansID, chapter.ID, chapter.length, sum)
			if err != nil {
				return errors.Wrap(err, "insert plans.bible_plans")
			}
		}

	}

	err = tx.Commit()
	if err != nil {
		return errors.Wrap(err, "commit")
	}
	return nil

}

func newTestDB() (*DB, error) {

	err := loadEnv()
	if err != nil {
		return nil, err
	}

	host := os.Getenv("POSTGRES_HOST")
	port := os.Getenv("POSTGRES_PORT")
	dbname := "testing"
	user := os.Getenv("POSTGRES_USER")
	password := os.Getenv("POSTGRES_PW")

	// connStr := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=verify-full", host, port, user, password, dbname)
	connStr := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable", host, port, user, password, dbname)
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		return nil, errors.New("error 130: could not initialize db")
	}

	if err := db.Ping(); err != nil {
		return nil, errors.Wrapf(err, "couldnt ping with host %s:%s and user %s", host, port, user)
	}

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql"}

	err = execScripts(db, sqlFiles)
	if err != nil {
		return nil, errors.Wrap(err, "couldnt exec script")
	}

	err = insertSplitVersesPlan(db)
	if err != nil {
		return nil, errors.Wrap(err, "couldnt write split verses")
	}

	return &DB{
		db:         db,
		Auth:       auth.NewAuthStore(db),
		Bible:      bible.NewBibleStore(db),
		Plans:      plans.NewPlansStore(db),
		Tracking:   tracking.NewTrackingStore(db),
		Companions: companions.NewCompanionsStore(db),
	}, nil
}

func execScripts(db *sql.DB, sqlFiles []string) error {
	for _, file := range sqlFiles {
		path := getRelativePath("app/sql/" + file)
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return errors.Wrapf(err, "error reading %s", file)
		}

		res, err := db.Exec(string(authSQL))
		if err != nil {
			return errors.Wrapf(err, "error initializing %s", file)
		}
		aff, _ := res.RowsAffected()
		affID, _ := res.LastInsertId()
		fmt.Printf("created %s tables, affected Rows: %v, Last affected Id: %v \n", file, aff, affID)
	}

	return nil
}
