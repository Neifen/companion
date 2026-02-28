// Package server is responsible to expose this application as a REST Server
package server

import (
	"fmt"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage"
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
	e.GET("/", s.handleGetHome, pasetoMiddleOpt())
	e.GET("/track-after/:date", s.handleGetAfterItem, pasetoMiddleOpt())
	e.GET("/track-before/:date", s.handleGetBeforeItem, pasetoMiddleOpt())

	e.POST("/check-trackeditem/:itemId/:checked", s.handleCheckTrackeItem, pasetoMiddleOpt())

	e.GET("/welcome", s.handleGetHome)
	e.GET("/details-verse/:verseId", s.handleGetHome) //?planId=
	e.GET("/details-book/:bookId", s.handleGetHome)   //?planId=

	e.GET("/start-plan", s.handleGetHome)
	e.POST("/start-plan/:planId", s.handleGetHome)

	// plan settings
	e.GET("/plan-settings", s.handlePlanSettings, pasetoMiddle())
	e.GET("/plan-settings/delete-plan", s.handleDeletePlanConfirm)
	e.POST("/plan-settings/delete-plan", s.handleDeletePlan, pasetoMiddle())

	e.GET("/join-plan", s.handleJoinPlanWindow)
	e.GET("/join-plan/confirm", s.handleJoinPlanConfirm) // ?start (because of js) ?end
	e.POST("/join-plan/:planId/:start/:end", s.handleJoinPlan, pasetoMiddle())

	// /plan-settings/join-plan
	e.GET("/move-start-confirm", s.handleConfirmMoveStart) // ?start (because of js) ?moveEnd
	e.GET("/move-end-confirm", s.handleConfirmMoveEnd)     // ?end (because of js) ?resetStart

	e.GET("/move-start-popup/:start", s.handleMoveStartPopup) // ?moveEnd
	e.GET("/move-end-popup/:end", s.handleMoveEndPopup)       // ?resetStart
	e.POST("/move-start/:start", s.moveStart, pasetoMiddle()) // ?moveEnd
	e.POST("/move-end/:end", s.moveEnd, pasetoMiddle())       // ?resetStart

	// login
	e.GET("/login", s.handleGetLogin)
	e.POST("/login", s.handlePostLogin)

	e.GET("/signup", s.handleGetSignup)
	e.POST("/signup", s.handlePostSignup)
	//e.GET("/verify_signup", s.handleGetVerifySignup) // todo

	e.POST("/token/logout", s.handlePostLogout) //to be able to access refresh token

	e.GET("/recovery", s.handleGetRecovery)
	// e.GET("/reset_password", s.handleGetPasswordReset) //fixme
	// e.POST("/reset_password", s.handlePostPasswordReset) //TODO

	// need
	e.POST("/token/refresh", s.handleTokenRefresh)
	e.GET("/token/refresh", s.handleTokenRefresh)

	//e.Use(pasetoMiddle())
	//e.GET(HOME_PATH, s.handleGetHome, pasetoMiddle())
	e.GET("/home", s.handleGetHome, pasetoMiddle())

	e.Logger.Fatal(e.Start(api.apiPath))
}

func pasetoMiddle() echo.MiddlewareFunc {
	return func(next echo.HandlerFunc) echo.HandlerFunc {
		return func(c echo.Context) error {
			u, err := userFromToken(c)
			// a) refresh available
			if err != nil {
				fmt.Printf("middleware: access token validation unsuccessful, try refresh token. \n%+v\n", err)
				return redirectToTokenRefresh(c)
			}

			if u == nil {
				// b) no refresh, log back in
				fmt.Println("middleware, no user is logged in, continue to login")
				return next(c)
			}

			// c) logged in
			c.Set("u", u)
			fmt.Printf("middleware, user %s is logged in, continue\n", u.name)
			return next(c)
		}
	}
}

func pasetoMiddleOpt() echo.MiddlewareFunc {
	return func(next echo.HandlerFunc) echo.HandlerFunc {
		return func(c echo.Context) error {
			u, err := userFromToken(c)
			// a) refresh available
			if err != nil {
				fmt.Printf("middleware opt: access token validation unsuccessful, try refresh token. \n%+v\n", err)
				return redirectToTokenRefresh(c)
			}

			if u == nil {
				// b) no refresh, log back in
				fmt.Println("middleware opt, no user is logged in, continue to login")
				return next(c)
			}

			// c) logged in
			c.Set("u", u)
			fmt.Printf("middleware opt, user %s is logged in, continue\n", u.name)
			return next(c)
		}
	}
}
