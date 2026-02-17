package auth

import (
	"time"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/crypto"
)

type UserModel struct {
	ID    uuid.UUID
	Name  string
	Email string
	Pw    []byte
}

type RefreshTokenModel struct {
	ID         int       `db:"id"`
	UserUID    uuid.UUID `db:"user_id"`
	Token      string    `db:"token_hash"`
	Expiration time.Time `db:"expires"`
	Remember   bool      `db:"remember"`
}

type VerificationTokenModel struct {
	ID         int        `db:"id"`
	UserUID    uuid.UUID  `db:"user_id"`
	TokenHash  []byte     `db:"token_hash"`
	Expiration time.Time  `db:"expires_at"`
	Consumed   *time.Time `db:"consumed_at"`
	Channel    string     `db:"channel"`
	Purpose    string     `db:"purpose"`
}

const (
	PurposeSignup   = "signup"
	PurposeEmail    = "emailChange"
	PurposePassword = "passwordReset"
)

func NewUserModel(name, email, pw string) (*UserModel, error) {
	pwHash := crypto.HashPassword(pw)
	id := uuid.New()

	return &UserModel{
		ID:    id,
		Name:  name,
		Email: email,
		Pw:    pwHash,
	}, nil
}

func NewRefreshTokenModel(userUID uuid.UUID, token string, expiration time.Time, remember bool) *RefreshTokenModel {
	return &RefreshTokenModel{
		UserUID:    userUID,
		Token:      token,
		Expiration: expiration,
		Remember:   remember,
	}
}
