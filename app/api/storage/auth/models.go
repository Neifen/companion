package auth

import (
	"time"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/pkg/errors"
)

type UserModel struct {
	ID    uuid.UUID
	Name  string
	Email string
	Pw    []byte
}

type RefreshTokenModel struct {
	id         int
	UserUID    uuid.UUID
	Token      string
	Expiration time.Time
	Remember   bool
}

func NewUserModel(name, email, pw string) (*UserModel, error) {
	pwHash, err := crypto.HashPassword(pw)
	if err != nil {
		return nil, errors.Wrapf(err, "usermodel: create new user")
	}

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
