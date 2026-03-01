// Package server is responsible to expose this application as a REST Server
package server

import (
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage"
	"github.com/rs/zerolog/log"
)

type APIServer struct {
	apiPath  string
	store    *storage.Storage
	services *services.Services
}

func NewAPIHandler(path string, serv *services.Services) *APIServer {
	return &APIServer{apiPath: path, services: serv}
}

func (api *APIServer) Run() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Use(middleware.Recover()) // so panics don't crash everything
	e.Static("/static", "app/assets")

	s := NewHanderSession(api.services)

	// home
	e.GET("/", s.handleGetHome, s.authorizeTokenOptional)
	e.GET("/track-after/:date", s.handleGetAfterItem, s.authorizeTokenOptional)
	e.GET("/track-before/:date", s.handleGetBeforeItem, s.authorizeTokenOptional)

	e.POST("/check-trackeditem/:itemId/:checked", s.handleCheckTrackeItem, s.authorizeTokenOptional)

	e.GET("/welcome", s.handleGetHome)
	e.GET("/details-verse/:verseId", s.handleGetHome) //?planId=
	e.GET("/details-book/:bookId", s.handleGetHome)   //?planId=

	e.GET("/start-plan", s.handleGetHome)
	e.POST("/start-plan/:planId", s.handleGetHome)

	// plan settings
	e.GET("/plan-settings", s.handlePlanSettings, s.authorizeToken)
	e.GET("/plan-settings/delete-plan", s.handleDeletePlanConfirm)
	e.POST("/plan-settings/delete-plan", s.handleDeletePlan, s.authorizeToken)

	e.GET("/join-plan", s.handleJoinPlanWindow)
	e.GET("/join-plan/confirm", s.handleJoinPlanConfirm) // ?start (because of js) ?end
	e.POST("/join-plan/:planId/:start/:end", s.handleJoinPlan, s.authorizeToken)

	// /plan-settings/join-plan
	e.GET("/move-start-confirm", s.handleConfirmMoveStart) // ?start (because of js) ?moveEnd
	e.GET("/move-end-confirm", s.handleConfirmMoveEnd)     // ?end (because of js) ?resetStart

	e.GET("/move-start-popup/:start", s.handleMoveStartPopup)   // ?moveEnd
	e.GET("/move-end-popup/:end", s.handleMoveEndPopup)         // ?resetStart
	e.POST("/move-start/:start", s.moveStart, s.authorizeToken) // ?moveEnd
	e.POST("/move-end/:end", s.moveEnd, s.authorizeToken)       // ?resetStart

	// login
	e.GET("/login", s.handleGetLogin, s.guestOnly)
	e.POST("/login", s.handlePostLogin, s.guestOnly)

	e.GET("/signup", s.handleGetSignup, s.guestOnly)
	e.POST("/signup", s.handlePostSignup, s.guestOnly)
	//e.GET("/verify_signup", s.handleGetVerifySignup) // todo

	e.POST("/token/logout", s.handlePostLogout) //to be able to access refresh token

	e.GET("/recovery", s.handleGetRecovery)
	// e.GET("/reset_password", s.handleGetPasswordReset) //fixme
	// e.POST("/reset_password", s.handlePostPasswordReset) //TODO

	// need
	e.POST("/token/refresh", s.handleTokenRefresh)
	e.GET("/token/refresh", s.handleTokenRefresh)

	//e.Use(authorizeToken())
	//e.GET(HOME_PATH, s.handleGetHome, authorizeToken())
	e.GET("/home", s.handleGetHome, s.authorizeToken)

	e.Logger.Fatal(e.Start(api.apiPath))
}

func (s *HandlerSession) authorizeToken(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		u := userFromToken(c)
		if u != nil {
			c.Set("u", u)
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
			c.Set("u", uid)
			return next(c)
		}

		return redirectToLogin(c)
	}
}

func (s *HandlerSession) authorizeTokenOptional(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		u := userFromToken(c)
		if u != nil {
			c.Set("u", u)
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
			return s.redirect(c, uid)
		}

		if canRefresh(c) {
			log.Debug().
				Msg("middleware guestOnly: access token validation unsuccessful, try refresh token")
			uid, err := s.refreshToken(c)
			if err != nil {
				return s.redirect(c, uid)
			}
			return next(c)
		}

		// continue to guest only page (login/signup/etc)
		return next(c)
	}
}
