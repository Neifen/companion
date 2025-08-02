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
	e.Static("/static", "assets")

	s := NewHanderSession(api.store)

	// home
	e.GET("/welcome", s.handleGetHome)
	e.GET("/", s.handleGetHome)
	e.GET("/details-verse/:verseId", s.handleGetHome) //?planId=
	e.GET("/details-book/:bookId", s.handleGetHome)   //?planId=

	e.POST("/read-verse/:verseId", s.handleGetHome)

	e.GET("/start-plan", s.handleGetHome)
	e.POST("/start-plan/:planId", s.handleGetHome)

	e.GET("/refresh-plan", s.handleGetHome)
	e.POST("/refresh-plan/:planId", s.handleGetHome)

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
			//todo twice?
			u := userFromToken(c)
			//todo there needs to be a difference between simply not logged in / token invalid and refresh token invalid
			if u.isLoggedIn {
				c.Set("u", u)
				fmt.Printf("Middleware, user %s is logged in, continue\n", u.name)
				return next(c)
			}

			return redirectToTokenRefresh(c)
		}
	}
}
