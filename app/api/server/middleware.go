package server

import (
	"time"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/rs/zerolog/log"
)

func (s *HandlerSession) loadUser(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {

		uid := ctxUID(c)
		if uid == uuid.Nil {
			c.Set("u", nil)
			return next(c)
		}

		ctx := c.Request().Context()
		u, err := s.services.GetUserByID(ctx, uid)
		if err != nil {
			log.Err(err).Any("uid", uid).Msg("loading user middleware")

			c.Set("u", nil)
			return next(c)
		}

		c.Set("u", u)
		return next(c)
	}
}

func (s *HandlerSession) authorizeToken(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		uid := userFromToken(c)
		if uid != nil {
			c.Set("uid", *uid)
			return next(c)
		}

		if canRefresh(c) {
			log.Debug().
				Msg("middleware guestOnly: access token validation unsuccessful, try refresh token")
			uid, err := s.refreshToken(c)
			if err != nil {
				//todo: logging
				return replaceLogin(c)
			}
			c.Set("uid", *uid)
			return next(c)
		}

		return replaceLogin(c)
	}
}

func (s *HandlerSession) authorizeTokenOptional(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		uid := userFromToken(c)
		if uid != nil {
			c.Set("uid", *uid)
			return next(c)
		}

		if canRefresh(c) {
			uid, err := s.refreshToken(c)
			if err == nil && uid != nil {
				c.Set("uid", *uid)
			}
		}

		// not logged in
		return next(c)
	}
}

func (s *HandlerSession) authorizeTokenVerify(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		uid := userFromToken(c)
		longToken := c.QueryParam("ltoken")
		hasToken := longToken == ""

		if uid != nil {
			c.Set("uid", *uid)
			return next(c)
		}

		if canRefresh(c) {
			uid, err := s.refreshToken(c)
			if err == nil && uid != nil {
				c.Set("uid", *uid)
				return next(c)
			}
		}

		// not logged in
		if hasToken {
			return next(c)
		}

		// no token, needs to be logged in
		return replaceLogin(c)
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

func zeroLogging(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		start := time.Now()

		err := next(c)

		stop := time.Now()
		latency := stop.Sub(start)

		req := c.Request()
		res := c.Response()

		log.Debug().
			Str("method", req.Method).
			Str("path", req.URL.Path).
			Int("status", res.Status).
			Dur("latency", latency).
			Str("ip", c.RealIP()).
			Msg("request")

		return err
	}
}
