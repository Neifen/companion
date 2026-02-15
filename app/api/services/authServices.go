package services

import (
	"context"

	"github.com/neifen/htmx-login/app/api/storage/auth"
)

func (s *Services) NewUser(ctx context.Context, u *auth.UserModel) error {
	return s.store.Auth.CreateUser(ctx, u)
}
