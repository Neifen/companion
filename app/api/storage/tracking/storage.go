// Package tracking implements db queries related to user creating trackings, checking tasks and reseting their plan
package tracking

import "database/sql"

type TrackingStore struct {
	db *sql.DB
}

func NewTrackingStore(db *sql.DB) *TrackingStore {
	return &TrackingStore{db}
}
