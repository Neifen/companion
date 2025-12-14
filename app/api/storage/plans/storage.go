// Package plans implements db queries related to reading a creating bible plans
package plans

import "database/sql"

type PlansStore struct {
	db *sql.DB
}

func NewPlansStore(db *sql.DB) *PlansStore {
	return &PlansStore{db}
}
