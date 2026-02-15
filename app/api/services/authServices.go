package services

import (
	"bytes"
	"context"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/pkg/errors"
)

func (s *Services) NewUser(ctx context.Context, u *auth.UserModel) error {
	return s.store.Auth.CreateUser(ctx, u)
}

func (s *Services) Authenticate(ctx context.Context, email, pw string) (*auth.UserModel, error) {

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	pwHash, err := crypto.HashPassword(pw)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	if !bytes.Equal(pwHash, u.Pw) {
		return nil, errors.New("service: Authenticate didn't succeed")
	}

	return u, nil
}

func (s *Services) GetUserByEmail(ctx context.Context, email string) (*auth.UserModel, error) {
	return s.store.Auth.ReadUserByEmail(ctx, email)
}

func (s *Services) GetUserByID(ctx context.Context, id uuid.UUID) (*auth.UserModel, error) {
	return s.store.Auth.ReadUserByUID(ctx, id)
}
