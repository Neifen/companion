// Package companions implements db queries related to the right side of the screen called "companion" with the infos and the images
package companions

import "database/sql"

type CompanionsStore struct {
	db *sql.DB
}

func NewCompanionsStore(db *sql.DB) *CompanionsStore {
	return &CompanionsStore{db}
}
