package server

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"github.com/neifen/htmx-login/app/api/storage"
)

const (
	LOGIN_PATH    string = "/login"
	SIGNUP_PATH   string = "/signup"
	RECOVERY_PATH string = "/recovery"

	LOGOUT_PATH  string = "/token/logout" //to be able to access refresh token
	REFRESH_PATH string = "/token/refresh"

	VERIFY_SIGNUP_PATH  string = "/verify_signup"
	RESET_PASSWORD_PATH string = "/reset_password"

	HOME_PATH           string = "/"
	HOME_SECONDARY_PATH string = "/home"
)

type APIServer struct {
	apiPath string
	store   storage.Storage
}

func NewAPIHandler(path string, s storage.Storage) *APIServer {
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
	e.GET("/plan-settings", s.handlePlanSettings)
	e.GET("/move-start-confirm", s.handleConfirmMoveStart)
	e.GET("/move-start-popup", s.handleMoveStartPopup)
	e.POST("/move-start", s.moveStart, pasetoMiddle())
	e.POST("/move-end", s.handleGetHome, pasetoMiddle())
	e.POST("/move-start-end", s.handleGetHome, pasetoMiddle())
	e.POST("/move-days", s.handleGetHome, pasetoMiddle())

	// login
	e.GET(LOGIN_PATH, s.handleGetLogin)
	e.POST(LOGIN_PATH, s.handlePostLogin)

	e.GET(SIGNUP_PATH, s.handleGetSignup)
	e.POST(SIGNUP_PATH, s.handlePostSignup)
	//e.GET(VERIFY_SIGNUP_PATH, s.handleGetVerifySignup)

	e.POST(LOGOUT_PATH, s.handlePostLogout)

	e.GET(RECOVERY_PATH, s.handleGetRecovery)
	//e.GET(RESET_PASSWORD_PATH, s.handleGetPasswordReset)
	//e.POST(RESET_PASSWORD_PATH, s.handlePostPasswordReset)

	// need
	e.POST(REFRESH_PATH, s.handleTokenRefresh)
	e.GET(REFRESH_PATH, s.handleTokenRefresh)

	//e.Use(pasetoMiddle())
	//e.GET(HOME_PATH, s.handleGetHome, pasetoMiddle())
	e.GET(HOME_SECONDARY_PATH, s.handleGetHome, pasetoMiddle())

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
