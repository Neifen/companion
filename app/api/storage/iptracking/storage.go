package iptracking

import "github.com/neifen/companion/app/api/storage/db"

type IPTrackingStore struct {
	db db.DB
}

func NewIPTrackingStore(db db.DB) *IPTrackingStore {
	return &IPTrackingStore{db}
}
