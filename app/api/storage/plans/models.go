package plans

type PlanModel struct {
	ID       int    `sql:"id"`
	Name     string `sql:"name"`
	PlanDesc string `sql:"plan_desc"`
}
