// Package auth implements all authentication relatied db queries
package auth

import (
	"github.com/neifen/companion/app/api/storage/db"
)

type AuthStore struct {
	db db.DB
}

func NewAuthStore(db db.DB) *AuthStore {
	return &AuthStore{db}
}
