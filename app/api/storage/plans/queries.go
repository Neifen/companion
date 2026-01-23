package plans

import (
	"context"

	"github.com/pkg/errors"
)

const (
	plansTable = "plans.plans"
)

func (pg *PlansStore) ReadAllPlans(ctx context.Context) ([]*PlanModel, error) {
	var id int
	var name string
	var planDesc string

	var planModels []*PlanModel
	rows, err := pg.db.Query(ctx, `select id, name, plan_desc from `+plansTable)
	if err != nil {
		return nil, errors.Wrap(err, "could not read all plans")
	}

	for rows.Next() {
		rows.Scan(&id, &name, &planDesc)

		planModels = append(planModels, &PlanModel{id, name, planDesc})
	}

	return planModels, nil

}
