package server

import (
	"fmt"
	"net/http"
	"time"

	view2 "github.com/neifen/htmx-login/app/view"

	"github.com/pkg/errors"

	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/logging"
	"github.com/neifen/htmx-login/app/api/storage"
	"github.com/neifen/htmx-login/app/api/storage/auth"
)

type HandlerSession struct {
	store *storage.DB //interfaces are already pointers?
}

func NewHanderSession(store *storage.DB) *HandlerSession {
	return &HandlerSession{
		store: store,
	}
}

func (s *HandlerSession) handleGetLogin(c echo.Context) error {
	if u, _ := userFromToken(c); u.isLoggedIn {
		return s.replaceHome(c, u)
	}

	child := view2.Login()
	return view2.RenderView(c, child)
}

func (s *HandlerSession) handlePostLogin(c echo.Context) error {
	if u, _ := userFromToken(c); u.isLoggedIn {
		return s.replaceHome(c, u)
	}

	email := c.FormValue("email")
	pw := c.FormValue("password")
	remember := c.FormValue("remember") == "on"

	userReq := s.Authenticate(c.Request().Context(), email, pw)
	if userReq.isLoggedIn {
		err := s.createAndHandleTokens(userReq, c, remember)

		if err == nil {
			return s.replaceHome(c, userReq)
		} else {
			fmt.Printf("\n\n auth: %v \n\n", err)

		}

	}

	// authenticate failed
	return s.redirectToLogin(c)
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
	cookie, err := c.Cookie("refresh")
	if err != nil {
		return errors.Wrapf(err, "getting refresh token from cookie %q failed", "refresh")
	}

	if cookie == nil {
		return fmt.Errorf("no refresh token in cookie %q", "refresh")
	}

	token, err := crypto.ValidTokenFromCookies(cookie)
	if err != nil {
		err = s.store.Auth.DeleteRefreshTokenByToken(c.Request().Context(), token.Encrypted)
		if err != nil {
			fmt.Printf("could not delete refresh token from db %v\n", err)
		}

		return fmt.Errorf("refresh token could not be validated")
	}

	exp := token.Expiration
	fmt.Printf("cookie expires: %v, token expires: %v\n", cookie.Expires, token.Expiration)

	if exp.Before(time.Now()) {
		err = s.store.Auth.DeleteRefreshTokenByToken(c.Request().Context(), token.Encrypted)
		if err != nil {
			fmt.Printf("could not delete refresh token from db %v\n", err)
		}
		return fmt.Errorf("refresh token expired")
	}

	refreshType, err := s.store.Auth.ReadRefreshTokenByToken(c.Request().Context(), token.Encrypted)
	if err != nil {
		return errors.Wrapf(err, "could not load refresh token from db")
	}

	user, err := s.store.Auth.ReadUserByUID(c.Request().Context(), refreshType.UserUID)
	if err != nil {
		return errors.Wrapf(err, "user invalid")
	}

	err = s.createAndHandleTokens(userFromModel(user), c, refreshType.Remember)
	if err != nil {
		return errors.Wrapf(err, "creating new tokens failed")
	}

	err = s.store.Auth.DeleteRefreshToken(c.Request().Context(), refreshType)
	if err != nil {
		return errors.Wrapf(err, "could not delete old refresh token")
	}

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

func (s *HandlerSession) createAndHandleTokens(user *userReq, c echo.Context, remember bool) error {
	access, err := crypto.NewAccessToken(user.uuid, user.name)
	if err != nil {
		return errors.Wrap(err, "could not generate access token")
	}
	refresh, err := crypto.NewRefreshToken(user.uuid, user.name, remember)
	if err != nil {
		return errors.Wrap(err, "could not generate refresh token")
	}

	uid, err := refresh.UserID()
	if err != nil {
		return errors.Wrap(err, "could not get userid from new refresh token")
	}

	refreshModel := auth.NewRefreshTokenModel(uid, refresh.Encrypted, refresh.Expiration, remember)
	err = s.store.Auth.CreateRefreshToken(c.Request().Context(), refreshModel)
	if err != nil {
		return errors.Wrap(err, "could not write new refresh token to db")
	}

	tokenC := access.AddToCookie()
	c.SetCookie(tokenC)

	refreshC := refresh.AddToCookie()
	c.SetCookie(refreshC)

	return nil
}

func (s *HandlerSession) handlePostLogout(c echo.Context) error {
	// delete refresh token from db
	refresh, err := c.Cookie("refresh")
	if err == nil && refresh != nil {
		err = s.store.Auth.DeleteRefreshTokenByToken(c.Request().Context(), refresh.Value)
		if err != nil {
			fmt.Printf("did not delete refresh token from db: %v\n", err)
		}
	}

	clearCookie("token", "/", c)
	clearCookie("refresh", "/token", c)

	return s.replaceHome(c, emptyUser())
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
	if u, _ := userFromToken(c); u.isLoggedIn {
		return s.replaceHome(c, u)
	}

	child := view2.PWRecovery()
	return view2.RenderView(c, child)
}

func (s *HandlerSession) handleGetSignup(c echo.Context) error {
	if u, _ := userFromToken(c); u.isLoggedIn {
		return s.replaceHome(c, u)
	}

	child := view2.Signup()
	return view2.RenderView(c, child)
}

func (s *HandlerSession) handlePostSignup(c echo.Context) error {
	if u, _ := userFromToken(c); u.isLoggedIn {
		return s.replaceHome(c, u)
	}

	email := c.FormValue("email")
	pw := c.FormValue("password")
	name := c.FormValue("name")

	u := auth.NewUserModel(name, email, pw)
	err := s.store.Auth.CreateUser(c.Request().Context(), u)

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
