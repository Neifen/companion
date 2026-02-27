package auth

import (
	"time"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/pkg/errors"
)

type UserModel struct {
	ID     uuid.UUID
	Name   string
	Email  string
	Pw     []byte
	Status string
}

type RefreshTokenModel struct {
	ID         int       `db:"id"`
	UserUID    uuid.UUID `db:"user_id"`
	Token      string    `db:"token_hash"`
	Expiration time.Time `db:"expires"`
	Remember   bool      `db:"remember"`
}

type VerificationTokenModel struct {
	ID         int                 `db:"id"`
	UserUID    uuid.UUID           `db:"user_id"`
	TokenHash  []byte              `db:"token_hash"`
	Expiration time.Time           `db:"expires_at"`
	Consumed   *time.Time          `db:"consumed_at"`
	CreatedAt  time.Time           `db:"created_at"`
	Attempts   int16               `db:"attempts"`
	Channel    string              `db:"channel"`
	Purpose    VerificationPurpose `db:"purpose"`
}

const (
	ChannelLongEmail  = "lm"
	ChannelShortEmail = "sm"
)

type VerificationPurpose string

const (
	PurposeSignup   VerificationPurpose = "signup"
	PurposeEmail    VerificationPurpose = "emailChange"
	PurposePassword VerificationPurpose = "passwordReset"
)

func NewUserModel(name, email, pw string) (*UserModel, error) {
	pwHash, err := crypto.HashPassword(pw)
	if err != nil {
		return nil, errors.WithMessage(err, "auth db: New User Model")
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
