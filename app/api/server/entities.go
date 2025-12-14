package server

import (
	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/pkg/errors"
)

type userReq struct {
	isLoggedIn bool
	name       string
	uuid       string
	id         int
}

func emptyUser() *userReq {
	return new(userReq)
}

func userFromModel(u *auth.UserModel) *userReq {
	return &userReq{
		name:       u.Name,
		uuid:       u.UID,
		isLoggedIn: true,
		id:         u.ID,
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
	return &userReq{isLoggedIn: true, name: name, uuid: uid}, nil
}
