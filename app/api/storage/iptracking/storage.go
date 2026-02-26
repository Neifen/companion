package iptracking

import "github.com/neifen/htmx-login/app/api/storage/db"

type IPTrackingStore struct {
	db db.DB
}

func NewIPTrackingStore(db db.DB) *IPTrackingStore {
	return &IPTrackingStore{db}
}
