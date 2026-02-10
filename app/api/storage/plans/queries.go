package plans

import (
	"context"

	"github.com/jackc/pgx/v5"
	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/pkg/errors"
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
    VALUES ($1, $2, $3, -1) RETURNING id `, name, desc, includesVerses).Scan(&id)
	if err != nil {
		return -1, errors.Wrapf(err, "CreateNewPlan(name: %s, desc, %s, includesVerses: %v)", name, desc, includesVerses)
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
		return errors.Wrapf(err, "CreateNewBiblePlan(planID: %d, chapters:, %v), write", planID, chapters)
	}

	_, err = pg.db.Exec(ctx, "UPDATE "+plansTable+" SET length = $1 where id = $2", total, planID)
	if err != nil {
		return errors.Wrapf(err, "CreateNewBiblePlan(planID: %d), updating plan with count: %d failed", planID, total)
	}

	return nil
}
