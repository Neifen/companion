// Package bible implements all bible relatied db queries
package bible

import "database/sql"

type BibleStore struct {
	db *sql.DB
}

func NewBibleStore(db *sql.DB) *BibleStore {
	return &BibleStore{db}
}
