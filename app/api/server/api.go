// Package server is responsible to expose this application as a REST Server
package server

import (
	"fmt"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"github.com/neifen/htmx-login/app/api/storage"
)

type APIServer struct {
	apiPath string
	store   *storage.DB
}

func NewAPIHandler(path string, s *storage.DB) *APIServer {
	return &APIServer{apiPath: path, store: s}
}

func (api *APIServer) Run() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Static("/static", "app/assets")

	s := NewHanderSession(api.store)

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

			//todo there needs to be a difference between simply not logged in / token invalid and refresh token invalid
			if err != nil || !u.isLoggedIn {
				return redirectToTokenRefresh(c)
			}

			c.Set("u", u)
			fmt.Printf("Middleware, user %s is logged in, continue\n", u.name)
			return next(c)
		}
	}
}

func pasetoMiddleOpt() echo.MiddlewareFunc {
	return func(next echo.HandlerFunc) echo.HandlerFunc {
		return func(c echo.Context) error {
			u, err := userFromToken(c)

			if err != nil {
				return redirectToTokenRefresh(c)
			}

			c.Set("u", u)
			if u.isLoggedIn {
				fmt.Printf("Middleware, user %s is logged in, continue\n", u.name)
				return next(c)
			}

			fmt.Println("Middleware, no user is logged in, continue")
			return next(c)
		}
	}
}
