package server

import (
	"fmt"
	"net/http"

	view2 "github.com/neifen/companion/app/view"

	"github.com/pkg/errors"

	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/api/crypto"
	"github.com/neifen/companion/app/api/logging"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage/auth"
)

type HandlerSession struct {
	services *services.Services
}

func NewHanderSession(services *services.Services) *HandlerSession {
	return &HandlerSession{
		services: services,
	}
}

func (s *HandlerSession) handleGetLogin(c echo.Context) error {
	if u, _ := userFromToken(c); u != nil {
		return s.replaceHome(c, u)
	}

	child := view2.Login()
	return view2.RenderView(c, child)
}

func (s *HandlerSession) handlePostLogin(c echo.Context) error {
	if u, _ := userFromToken(c); u != nil {
		return s.replaceHome(c, u)
	}

	email := c.FormValue("email")
	pw := c.FormValue("password")
	remember := c.FormValue("remember") == "on"

	u, err := s.services.Authenticate(c.Request().Context(), c.RealIP(), email, pw, remember)
	if err != nil {
		fmt.Printf("api: handlePostLogin: \n%+v\n", err)
		return s.redirectToLogin(c)
	}

	tokenToCookie(*u.Access, *u.Refresh, c)
	userReq := userFromModel(u.User)

	return s.replaceHome(c, userReq)

}

func (s *HandlerSession) handleTokenRefresh(c echo.Context) error {
	err := s.subHandleTokenRefresh(c)
	if err != nil {
		fmt.Println(err)
		//todo is return here correct?
		return s.redirectToLogin(c)
	}

	return err
}

func (s *HandlerSession) subHandleTokenRefresh(c echo.Context) error {
	refresh, err := c.Cookie("refresh")
	if err != nil {
		return errors.Wrapf(err, "getting refresh token from cookie %q failed", "refresh")
	}

	if refresh == nil {
		return fmt.Errorf("no refresh token in cookie %q", "refresh")
	}

	auth, err := s.services.RefreshToken(c.Request().Context(), c.RealIP(), refresh.Value)
	if err != nil {
		errors.WithMessagef(err, "api: refresh token")
	}

	tokenToCookie(*auth.Access, *auth.Refresh, c)

	returnURL := c.QueryParam("return")
	if returnURL != "" {
		fmt.Printf("redirect with return: %s \n", returnURL)
		return c.Redirect(http.StatusSeeOther, returnURL)
	}

	fmt.Printf("redirect with no return\n")
	return c.String(http.StatusOK, "Token successfully refreshed")
}

func redirectToTokenRefresh(c echo.Context) error {
	if c.Request().Header.Get("HX-Request") != "true" {
		// standard redirect
		return c.Redirect(http.StatusTemporaryRedirect, ("token/refresh?return=" + c.Request().URL.Path))
	}
	return c.String(http.StatusUnauthorized, "Unauthorized")
}

func tokenToCookie(token crypto.AccessToken, refresh crypto.RefreshToken, c echo.Context) {
	tokenC := token.AddToCookie()
	c.SetCookie(tokenC)

	refreshC := refresh.AddToCookie()
	c.SetCookie(refreshC)
}

func (s *HandlerSession) handlePostLogout(c echo.Context) error {
	// delete refresh token from db
	refresh, err := c.Cookie("refresh")
	if err == nil && refresh != nil {
		err := s.services.InvalidateRefresh(c.Request().Context(), refresh.Value)
		if err != nil {
			//todo: error
			return echo.ErrBadRequest
		}
	}

	clearCookie("token", "/", c)
	clearCookie("refresh", "/", c)

	return s.replaceHome(c, nil)
}

func clearCookie(name, path string, c echo.Context) {
	cookie, err := c.Cookie(name)
	if err != nil {
		return
	}
	cookie.Value = ""
	cookie.Path = path //very important
	cookie.MaxAge = -1
	c.SetCookie(cookie)
}

func (s *HandlerSession) handleGetRecovery(c echo.Context) error {
	if u, _ := userFromToken(c); u != nil {
		return s.replaceHome(c, u)
	}

	child := view2.PWRecovery()
	return view2.RenderView(c, child)
}

func (s *HandlerSession) handleGetSignup(c echo.Context) error {
	if u, _ := userFromToken(c); u != nil {
		return s.replaceHome(c, u)
	}

	child := view2.Signup()
	return view2.RenderView(c, child)
}

func (s *HandlerSession) handlePostSignup(c echo.Context) error {
	if u, _ := userFromToken(c); u != nil {
		return s.replaceHome(c, u)
	}

	email := c.FormValue("email")
	pw := c.FormValue("password")
	name := c.FormValue("name")

	u, err := auth.NewUserModel(name, email, pw)
	if err != nil {
		logging.Error(err)
		// todo show error
		return s.handleGetSignup(c)
	}

	err = s.services.NewUser(c.Request().Context(), c.RealIP(), u)
	if err != nil {
		logging.Error(err)
		// todo show error
		return s.handleGetSignup(c)
	}

	//todo success
	return s.redirectToLogin(c)
}

//func (s *HandlerSession) handleGetVerifySignup(c echo.Context) error {
//	if u := userFromToken(c); u.isLoggedIn {
//		return s.redirectToHome(c, u)
//	}
//
//	key := c.FormValue("key")
//
//	//todo
//	// - create a table that links user to unencrypted key, with expiration. Set user to unidentified (add column)
//	// - in sign up, create new item
//	// - decrypt key, find item
//	// - get user from that, set user to identified
//	// - remove signup verification row
//	// - logged in, redirect
//
//	u := storage.NewUserModel(name, email, pw)
//	err := s.store.CreateUser(u)
//
//	if err != nil {
//		logging.Error(err)
//		// todo show error
//		return s.handleGetSignup(c)
//	}
//
//	//todo success
//	return s.redirectToLogin(c)
//}

func (*HandlerSession) redirectToLogin(c echo.Context) error {
	child := view2.Login()
	return view2.ReplaceUrl("/login", c, child)
}
