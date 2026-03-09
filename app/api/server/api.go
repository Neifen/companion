// Package server is responsible to expose this application as a REST Server
package server

import (
	"net/http"

	"github.com/google/uuid"
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

	e.Use(zeroLogging)
	e.Use(middleware.Recover()) // so panics don't crash everything
	e.Static("/static", "app/assets")

	s := NewHanderSession(api.services)

	// home
	e.GET("/", s.entry, s.authorizeTokenOptional, s.loadUser)
	e.GET("/welcome", s.welcome, s.authorizeTokenOptional)

	e.GET("/home", s.dashboard, s.authorizeToken)

	e.GET("/track-after/:date", s.loadAfterItem, s.authorizeTokenOptional)
	e.GET("/track-before/:date", s.loadBeforeItem, s.authorizeTokenOptional)

	e.POST("/check-trackeditem/:itemId/:checked", s.checkTask, s.authorizeTokenOptional)

	// plan settings
	e.GET("/plan-settings", s.showPlanSettings, s.authorizeToken)
	e.GET("/plan-settings/delete-plan", s.handleDeletePlanConfirm)
	e.POST("/plan-settings/delete-plan", s.deletePlan, s.authorizeToken)

	e.GET("/join-plan", s.joinPlanWindow)
	e.GET("/join-plan/confirm", s.confirmJoinPlan) // ?start (because of js) ?end
	e.POST("/join-plan/:planId/:start/:end", s.joinPlan, s.authorizeToken)

	// /plan-settings/join-plan
	e.GET("/move-start-confirm", s.confirmPlanMoveStart) // ?start (because of js) ?moveEnd
	e.GET("/move-end-confirm", s.confirmPlanMoveEnd)     // ?end (because of js) ?resetStart

	e.GET("/move-start-popup/:start", s.showMoveStart)          // ?moveEnd
	e.GET("/move-end-popup/:end", s.showMoveEnd)                // ?resetStart
	e.POST("/move-start/:start", s.moveStart, s.authorizeToken) // ?moveEnd
	e.POST("/move-end/:end", s.moveEnd, s.authorizeToken)       // ?resetStart

	// login
	e.GET("/login", s.showLogin, s.guestOnly)
	e.POST("/login", s.login, s.guestOnly)
	e.POST("/logout", s.logout) //to be able to access refresh token

	// verifications
	e.GET("/signup", s.showSignup, s.guestOnly)                                      // todo - gets the signup page
	e.POST("/signup", s.signup, s.guestOnly)                                         // todo - send signup form
	e.GET("/verify-signup", s.showVerify, s.authorizeTokenOptional)                  // todo - verify long token
	e.POST("/verify-signup", s.verifyShort, s.authorizeToken)                        // todo - verify short token
	e.POST("/renew-signup-token", s.renewSignupTokens, s.authorizeToken, s.loadUser) // todo - renew the tokens

	e.GET("/forgot-password", s.forgotPasswordPage, s.guestOnly) // Get forgot password page
	//todo: f5 here goes back to /forgot-password, so thats no bueno
	e.POST("/forgot-password", s.forgotPassword, s.guestOnly) // Send forgot password request -> return recovery page ()

	e.GET("/reset-password", s.resetPasswordLongPage, s.guestOnly)       // Get reset password page (long token)
	e.POST("/verify-recovery-long", s.verifyRecoveryLong, s.guestOnly)   // Verify long token -> show login
	e.POST("/verify-recovery-short", s.verifyRecoveryShort, s.guestOnly) // Verify the short token for recovery -> show login

	e.POST("/renew-recovery-token", s.renewRecoveryToken, s.guestOnly) //  renew the recovery tokens

	// settings
	e.GET("/user-settings", s.userSettings, s.authorizeToken, s.loadUser)
	// e.POST("/edit-user", s.editUser)

	e.Logger.Fatal(e.Start(api.apiPath))
}

// todo: uid/user -> authUser object
func replaceUID(c echo.Context, url string, uid uuid.UUID, next func(echo.Context, uuid.UUID) error) error {
	if c.Request().Header.Get("HX-Request") != "true" {
		return c.Redirect(http.StatusSeeOther, url)
	}

	c.Response().Header().Set("HX-Replace-Url", url)
	return next(c, uid)
}

func replace(c echo.Context, url string, next func(echo.Context) error) error {
	if c.Request().Header.Get("HX-Request") != "true" {
		return c.Redirect(http.StatusSeeOther, url)
	}

	c.Response().Header().Set("HX-Replace-Url", url)
	return next(c)
}
