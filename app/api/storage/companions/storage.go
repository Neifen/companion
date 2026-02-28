// Package companions implements db queries related to the right side of the screen called "companion" with the infos and the images
package companions

import "github.com/neifen/companion/app/api/storage/db"

type CompanionsStore struct {
	db db.DB
}

func NewCompanionsStore(db db.DB) *CompanionsStore {
	return &CompanionsStore{db}
}
