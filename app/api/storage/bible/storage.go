// Package bible implements all bible relatied db queries
package bible

import "github.com/neifen/htmx-login/app/api/storage/db"

type BibleStore struct {
	db db.DB
}

func NewBibleStore(db db.DB) *BibleStore {
	return &BibleStore{db}
}
