package server

import (
	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/pkg/errors"
)

type userReq struct {
	isLoggedIn bool
	name       string
	id         uuid.UUID
}

func emptyUser() *userReq {
	return new(userReq)
}

func userFromModel(u *auth.UserModel) *userReq {
	return &userReq{
		name:       u.Name,
		id:         u.ID,
		isLoggedIn: true,
	}
}

func userFromToken(c echo.Context) (*userReq, error) {
	cookie, err := c.Cookie("token")
	if err != nil || cookie == nil {
		return emptyUser(), nil
	}

	token, err := crypto.ValidTokenFromCookies(cookie)
	if err != nil {
		return emptyUser(), errors.Wrap(err, "getting user from cookies")
	}

	uid, err := token.UserID()
	if err != nil {
		return emptyUser(), errors.Wrap(err, "getting userID from token")
	}

	name, err := token.UserName()
	if err != nil {
		return emptyUser(), errors.Wrap(err, "getting userName from token")
	}
	return &userReq{isLoggedIn: true, name: name, id: uid}, nil
}
