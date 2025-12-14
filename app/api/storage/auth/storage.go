// Package auth implements all authentication relatied db queries
package auth

import "database/sql"

type AuthStore struct {
	db *sql.DB
}

func NewAuthStore(db *sql.DB) *AuthStore {
	return &AuthStore{db}
}
