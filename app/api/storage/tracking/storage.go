// Package tracking implements db queries related to user creating trackings, checking tasks and reseting their plan
package tracking

import (
	"github.com/jackc/pgx/v5/pgxpool"
)

type TrackingStore struct {
	db *pgxpool.Pool
}

func NewTrackingStore(db *pgxpool.Pool) *TrackingStore {
	return &TrackingStore{db}
}
