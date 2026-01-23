// Package bible implements all bible relatied db queries
package bible

import "github.com/jackc/pgx/v5/pgxpool"

type BibleStore struct {
	db *pgxpool.Pool
}

func NewBibleStore(db *pgxpool.Pool) *BibleStore {
	return &BibleStore{db}
}
