package plans

import (
	"context"

	"github.com/jackc/pgx/v5"
	"github.com/pkg/errors"
)

const (
	plansTable = "plans.plans"
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
