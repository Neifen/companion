// Package plans implements db queries related to reading a creating bible plans
package plans

import (
	"github.com/jackc/pgx/v5/pgxpool"
)

type PlansStore struct {
	db *pgxpool.Pool
}

func NewPlansStore(db *pgxpool.Pool) *PlansStore {
	return &PlansStore{db}
}
