package server

import (
	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/api/crypto"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/rs/zerolog/log"
)

type HandlerSession struct {
	services *services.Services
}

func NewHanderSession(services *services.Services) *HandlerSession {
	return &HandlerSession{
		services: services,
	}
}

func userFromToken(c echo.Context) *uuid.UUID {
	cookie, err := c.Cookie("token")
	if err != nil {
		return nil
	}

	token, err := crypto.ValidTokenFromCookies(cookie)
	if err != nil {
		if err == crypto.ErrNoAccessToken || err == crypto.ErrInvalidAccessToken {
			log.Info().Err(err)
		} else {
			log.Err(err).Msg("Get user from token, fatal error")
		}
		return nil
	}

	uid, err := token.UserID()
	if err != nil {
		log.Err(err).Msg("Get user from token, fatal error")
		return nil
	}

	return &uid
}

func canRefresh(c echo.Context) bool {
	_, err := c.Cookie("refresh")
	return err == nil
}

func ctxUser(c echo.Context) *auth.UserModel {
	var u *auth.UserModel
	if temp := c.Get("u"); temp != nil {
		u = temp.(*auth.UserModel)
	}
	return u
}

func setCtxUser(c echo.Context, u *auth.UserModel) {
	c.Set("uid", u.ID)
	c.Set("u", u)
}

func ctxUID(c echo.Context) uuid.UUID {
	var uid uuid.UUID
	if temp := c.Get("uid"); temp != nil {
		uid = temp.(uuid.UUID)
	}
	return uid
}
