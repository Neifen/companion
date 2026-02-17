package server

import (
	"fmt"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/pkg/errors"
)

type userReq struct {
	name string
	id   uuid.UUID
}

func userFromModel(u *auth.UserModel) *userReq {
	return &userReq{
		name: u.Name,
		id:   u.ID,
	}
}

func userFromToken(c echo.Context) (*userReq, error) {
	cookie, err := c.Cookie("token")
	if err != nil {
		_, errRef := c.Cookie("refresh")
		if errRef != nil {
			fmt.Printf("No access nor refresh token -> login %+v", errRef)
			return nil, nil
		}

		return nil, errors.Wrap(err, "access token removed, try refresh")
	}

	token, err := crypto.ValidTokenFromCookies(cookie)
	if err != nil {
		return nil, errors.Wrap(err, "getting user from cookies")
	}

	uid, err := token.UserID()
	if err != nil {
		return nil, errors.Wrap(err, "getting userID from token")
	}

	return &userReq{name: "todo:find another way to get name", id: uid}, nil
}
