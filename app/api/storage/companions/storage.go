// Package companions implements db queries related to the right side of the screen called "companion" with the infos and the images
package companions

import (
	"github.com/jackc/pgx/v5/pgxpool"
)

type CompanionsStore struct {
	db *pgxpool.Pool
}

func NewCompanionsStore(db *pgxpool.Pool) *CompanionsStore {
	return &CompanionsStore{db}
}
