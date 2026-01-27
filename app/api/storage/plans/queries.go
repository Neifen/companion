package plans

import (
	"context"

	"github.com/jackc/pgx/v5"
	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/pkg/errors"
)

const (
	plansTable      = "plans.plans"
	biblePlansTable = "plans.bible_plans"
)

func (pg *PlansStore) ReadAllPlans(ctx context.Context) ([]PlanModel, error) {
	rows, err := pg.db.Query(ctx, `select id, name, plan_desc from `+plansTable)
	if err != nil {
		return nil, errors.Wrap(err, "could not read all plans")
	}

	planModels, err := pgx.CollectRows(rows, pgx.RowToStructByName[PlanModel])
	if err != nil {
		return nil, errors.Wrap(err, "could not scan all plans")
	}

	return planModels, nil
}

func (pg *PlansStore) CreateNewPlan(ctx context.Context, name, desc string, includesVerses bool) (int, error) {
	var id int
	err := pg.db.QueryRow(ctx, `
	INSERT INTO `+plansTable+`(name, plan_desc, includes_verses, length)
    VALUES ($1, $2, $3) RETURNING id `, name, desc, includesVerses).Scan(&id)
	if err != nil {
		return -1, errors.Wrapf(err, "CreateNewPlan(name: %s, desc, %s, includesVerses: %v)", name, desc, includesVerses)
	}

	return id, nil
}

func (pg *PlansStore) CreateNewBiblePlan(ctx context.Context, planID int, chapters []bible.ChapterModel) error {

	chapterIDS := []int16{}
	chapterLength := []int16{}
	total := 0
	for _, ch := range chapters {
		chapterIDS = append(chapterIDS, ch.ID)
		chapterLength = append(chapterLength, ch.ChapterWordCount)
		total += int(ch.ChapterWordCount)
	}

	rows, err := pg.db.Exec(ctx, `
		INSERT INTO `+biblePlansTable+`(plan_fk, chapter_fk, length, running_length)
		SELECT
		$1 as plan_fk,
		chapter.id as chapter_fk,
		chapter_word_count as length,
		sum(chapter_word_count) over (order by chapter.ord)
		from UNNEST($2::smallint[], $3::smallint[]) WITH ORDINALITY AS chapter(id, chapter_word_count, ord);
	`, planID, chapterIDS, chapterLength)
	if err != nil {
		return errors.Wrapf(err, "CreateNewBiblePlan(planID: %d, chapters:, %v), write", planID, chapters)
	}
	if int(rows.RowsAffected()) != len(chapters) {
		return errors.Errorf("CreateNewBiblePlan(planID: %d, chapters:, %v), rows affected (%d) and chapter length (%d) didn't match", planID, chapters, rows.RowsAffected(), len(chapters))
	}

	_, err = pg.db.Exec(ctx, "UPDATE "+plansTable+" SET length = $1 where id = $2", total, planID)
	if err != nil {
		return errors.Wrapf(err, "CreateNewBiblePlan(planID: %d), updating plan with count: %d failed", planID, total)
	}

	return nil
}
