// Package plans implements db queries related to reading a creating bible plans
package plans

import (
	"github.com/neifen/companion/app/api/storage/db"
)

type PlansStore struct {
	db db.DB
}

func NewPlansStore(db db.DB) *PlansStore {
	return &PlansStore{db}
}
