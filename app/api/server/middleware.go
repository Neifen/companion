package server

import (
	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/rs/zerolog/log"
)

func (s *HandlerSession) loadUser(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {

		uid := ctxUID(c)
		if uid == uuid.Nil {
			return redirectToLogin(c)
		}

		ctx := c.Request().Context()
		u, err := s.services.GetUserByID(ctx, uid)
		if err != nil {
			//todo: not sure thats right
			return redirectToLogin(c)
		}

		c.Set("u", u)
		return next(c)
	}
}

func (s *HandlerSession) authorizeToken(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		u := userFromToken(c)
		if u != nil {
			c.Set("uid", u)
			return next(c)
		}

		if canRefresh(c) {
			log.Debug().
				Msg("middleware guestOnly: access token validation unsuccessful, try refresh token")
			uid, err := s.refreshToken(c)
			if err != nil {
				//todo: logging
				return redirectToLogin(c)
			}
			c.Set("uid", uid)
			return next(c)
		}

		return redirectToLogin(c)
	}
}

func (s *HandlerSession) authorizeTokenOptional(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		u := userFromToken(c)
		if u != nil {
			c.Set("uid", u)
			return next(c)
		}

		if canRefresh(c) {
			s.refreshToken(c)
		}

		// not logged in
		return next(c)
	}
}

func (s *HandlerSession) guestOnly(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		uid := userFromToken(c)
		if uid != nil {
			return s.redirect(c, *uid)
		}

		if canRefresh(c) {
			log.Debug().
				Msg("middleware guestOnly: access token validation unsuccessful, try refresh token")
			uid, err := s.refreshToken(c)
			if err != nil {
				return s.redirect(c, *uid)
			}
			return next(c)
		}

		// continue to guest only page (login/signup/etc)
		return next(c)
	}
}
