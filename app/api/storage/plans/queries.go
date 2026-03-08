package plans

import (
	"context"
	"fmt"
	"math"
	"strings"

	"github.com/jackc/pgx/v5"
	"github.com/neifen/companion/app/api/storage/bible"
	"github.com/rs/zerolog/log"
)

const (
	plansTable          = "plans.plans"
	biblePlansTable     = "plans.bible_plans"
	schema              = "plans"
	biblePlansTableName = "bible_plans"
)

func (pg *PlansStore) ReadAllPlans(ctx context.Context) ([]PlanModel, error) {
	rows, err := pg.db.Query(ctx, `select id, name, plan_desc from `+plansTable)
	if err != nil {
		return nil, fmt.Errorf("plans db: could not read all plans %w", err)
	}

	planModels, err := pgx.CollectRows(rows, pgx.RowToStructByName[PlanModel])
	if err != nil {
		return nil, fmt.Errorf("plans db: could not scan all plans %w", err)
	}

	return planModels, nil
}

func (pg *PlansStore) CreateNewPlan(ctx context.Context, name, desc string, includesVerses bool) (int, error) {
	var id int
	err := pg.db.QueryRow(ctx, `
	INSERT INTO `+plansTable+`(name, plan_desc, includes_verses, length)
    VALUES ($1, $2, $3, -1) RETURNING id `, name, desc, includesVerses).Scan(&id)
	if err != nil {
		return -1, fmt.Errorf("plans db: createNewPlan(name: %s, desc, %s, includesVerses: %v) %w", name, desc, includesVerses, err)
	}

	return id, nil
}

func (pg *PlansStore) CreateNewBiblePlan(ctx context.Context, planID int, chapters []bible.ChapterModel) error {
	entries := [][]any{}
	columns := []string{"plan_fk", "chapter_fk", "length", "running_length", "verse_fks", "verses"}

	total := 0
	for _, ch := range chapters {
		total += int(ch.WordCount)
		entries = append(entries, []any{planID, ch.ID, ch.WordCount, total, ch.Verses, ch.VersesTitle})
	}

	_, err := pg.db.CopyFrom(ctx, pgx.Identifier{schema, biblePlansTableName}, columns, pgx.CopyFromRows(entries))
	if err != nil {
		return fmt.Errorf("plans db: createNewBiblePlan(planID: %d, chapters:, %v), write %w", planID, chapters, err)
	}

	_, err = pg.db.Exec(ctx, "UPDATE "+plansTable+" SET length = $1 where id = $2", total, planID)
	if err != nil {
		return fmt.Errorf("plans db: createNewBiblePlan(planID: %d), updating plan with count: %d failed %w", planID, total, err)
	}

	return nil
}

func (pg *PlansStore) SpecialSplitPlan(ctx context.Context) (int, error) {

	row := pg.db.QueryRow(ctx, "SELECT id from plans.plans where name='split chapters'")
	var plansID int
	err := row.Scan(&plansID)
	if err == nil {
		// already exists, return
		log.Info().Int("plansID", plansID).Msg("special split plan already exists")
		return plansID, nil
	}

	_, err = pg.db.Exec(ctx, `INSERT INTO plans.plans( name, plan_desc)
    VALUES ('split chapters', 'This is like the plan that is shown by default but with long chapters split. Is just a canonical plan')
ON CONFLICT
    DO NOTHING;`)
	if err != nil {
		return -1, fmt.Errorf("first insert %w", err)
	}

	row = pg.db.QueryRow(ctx, "select max(id) from plans.plans")
	err = row.Scan(&plansID)
	if err != nil {
		return -1, fmt.Errorf("query plans ID %w", err)
	}

	row = pg.db.QueryRow(ctx, "select avg(chapter_word_count) from static.chapters")
	var avg float32
	err = row.Scan(&avg)
	if err != nil {
		return -1, fmt.Errorf("query avg %w", err)
	}

	rows, err := pg.db.Query(ctx, `    
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
		return -1, fmt.Errorf("query deets %w", err)
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

				_, err = pg.db.Exec(ctx, `
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length, verse_fks, verses) 
			values ($1, $2, $3, $4, $5, $6)
			`, plansID, chapter.ID, versesLengths[insertIter], sum, ids, versesDesc[insertIter])
				if err != nil {
					return -1, fmt.Errorf("insert plans.bible_plans %w", err)
				}
			}

		} else {
			sum += int32(chapter.length)

			_, err = pg.db.Exec(ctx, `
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length) 
			values ($1, $2, $3, $4)
			`, plansID, chapter.ID, chapter.length, sum)
			if err != nil {
				return -1, fmt.Errorf("insert plans.bible_plans %w", err)
			}
		}

	}

	return plansID, nil
}
