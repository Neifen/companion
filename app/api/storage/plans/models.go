package plans

type PlanModel struct {
	ID       int    `db:"id"`
	Name     string `db:"name"`
	PlanDesc string `db:"plan_desc"`
}
