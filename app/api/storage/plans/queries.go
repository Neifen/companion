package plans

import (
	"context"
	"fmt"

	"github.com/jackc/pgx/v5"
	"github.com/neifen/companion/app/api/storage/bible"
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
