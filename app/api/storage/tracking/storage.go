// Package tracking implements db queries related to user creating trackings, checking tasks and reseting their plan
package tracking

import (
	"github.com/neifen/companion/app/api/storage/db"
)

type TrackingStore struct {
	db db.DB
}

func NewTrackingStore(db db.DB) *TrackingStore {
	return &TrackingStore{db}
}
