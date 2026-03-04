package server

import (
	"fmt"
	"net/http"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/view"
	"github.com/rs/zerolog/log"

	"github.com/pkg/errors"

	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/api/crypto"
	"github.com/neifen/companion/app/api/storage/auth"
)

func (s *HandlerSession) handleGetLogin(c echo.Context) error {
	child := view.Login()
	return view.RenderView(c, child)
}

func (s *HandlerSession) handlePostLogin(c echo.Context) error {
	email := c.FormValue("email")
	pw := c.FormValue("password")
	remember := c.FormValue("remember") == "on"

	u, err := s.services.Authenticate(c.Request().Context(), c.RealIP(), email, pw, remember)
	if err != nil {
		fmt.Printf("api: handlePostLogin: \n%+v\n", err)
		return redirectToLogin(c)
	}

	tokenToCookie(u.Access, u.Refresh, c)
	return s.replaceEntry(c, u.User)
}

// Depricated: this used to be a redirect, we now do it in the background with RefreshToken
func (s *HandlerSession) handleTokenRefresh(c echo.Context) error {
	err := s.subHandleTokenRefresh(c)
	if err != nil {
		fmt.Println(err)
		//todo is return here correct?
		return redirectToLogin(c)
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

	tokenToCookie(auth.Access, auth.Refresh, c)

	returnURL := c.QueryParam("return")
	if returnURL != "" {
		fmt.Printf("redirect with return: %s \n", returnURL)
		return c.Redirect(http.StatusSeeOther, returnURL)
	}

	fmt.Printf("redirect with no return\n")
	return c.String(http.StatusOK, "Token successfully refreshed")
}

func (s *HandlerSession) refreshToken(c echo.Context) (*uuid.UUID, error) {
	refresh, err := c.Cookie("refresh")
	if err != nil {
		return nil, errors.Wrapf(err, "getting refresh token from cookie %q failed", "refresh")
	}

	if refresh == nil {
		return nil, fmt.Errorf("no refresh token in cookie %q", "refresh")
	}

	auth, err := s.services.RefreshToken(c.Request().Context(), c.RealIP(), refresh.Value)
	if err != nil {
		errors.WithMessagef(err, "api: refresh token")
	}

	//todo: check if that works
	tokenToCookie(auth.Access, auth.Refresh, c)
	return &auth.User.ID, nil
}

func tokenToCookie(token *crypto.AccessToken, refresh *crypto.RefreshToken, c echo.Context) {
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

	return s.replaceEntry(c, nil)
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
	child := view.PWRecovery()
	return view.RenderView(c, child)
}

func (s *HandlerSession) getSignup(c echo.Context) error {
	child := view.Signup()
	return view.RenderView(c, child)
}

func (s *HandlerSession) getVerify(c echo.Context) error {
	longToken := c.QueryParam("ltoken")
	if longToken == "" {
		uid := ctxUID(c)
		return s.renderVerify(c, uid)
	}

	ip := c.RealIP()
	ctx := c.Request().Context()
	u, err := s.services.CheckLongVerificationToken(ctx, ip, longToken)
	if err != nil {
		//todo: show error
		return s.renderVerify(c, u.ID)
	}

	return s.replaceOnobarding(c, u.ID)
}

func (s *HandlerSession) replaceVerify(c echo.Context, uid uuid.UUID) error {
	// might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/verify-signup")
	return s.renderVerify(c, uid)
}

func (s *HandlerSession) renderVerify(c echo.Context, uid uuid.UUID) error {

	ctx := c.Request().Context()
	exp, err := s.services.GetVerificationTokenExpiration(ctx, uid)
	if err != nil {
		//todo: add error
		log.Err(err)
	}
	fmt.Printf("exp %s\n", exp)
	log.Info().Any("exp", exp)

	child := view.Verify(exp)
	return view.RenderView(c, child)
}

func (s *HandlerSession) signupForm(c echo.Context) error {
	email := c.FormValue("email")
	pw := c.FormValue("password")
	name := c.FormValue("name")

	u, err := auth.NewUserModel(name, email, pw)
	if err != nil {
		log.Err(err)
		// todo show error
		return s.getSignup(c)
	}

	ctx := c.Request().Context()
	ip := c.RealIP()

	err = s.services.NewUser(ctx, ip, u)
	if err != nil {
		log.Err(err)
		// todo show error
		return s.getSignup(c)
	}

	access, err := s.services.CreateAccessToken(u.ID)
	if err != nil {
		log.Err(err)
		// todo show error
		return redirectToLogin(c)
	}

	refresh, err := s.services.CreateRefreshToken(ctx, u.ID, false)
	if err != nil {
		log.Err(err)
		// todo show error
		return redirectToLogin(c)
	}

	tokenToCookie(access, refresh, c)
	setCtxUser(c, u)

	return s.getVerify(c)
}

func (s *HandlerSession) verifyShort(c echo.Context) error {
	shortToken := c.FormValue("stoken")
	uid := ctxUID(c)

	if shortToken == "" {
		return s.renderVerify(c, uid)
	}

	ip := c.RealIP()
	ctx := c.Request().Context()
	u, err := s.services.CheckShortVerificationToken(ctx, ip, shortToken, uid)
	if err != nil {
		//todo: show error
		return s.renderVerify(c, u.ID)
	}

	return s.replaceOnobarding(c, u.ID)
}

func (s *HandlerSession) renewSignupTokens(c echo.Context) error {
	ip := c.RealIP()
	ctx := c.Request().Context()

	u := ctxUser(c)

	err := s.services.RequestSignupVerificationTokens(ctx, ip, u)
	if err != nil {
		//todo: show error
		log.Err(err)

		return redirectToLogin(c)
	}

	return s.replaceVerify(c, u.ID)
}

func redirectToLogin(c echo.Context) error {
	child := view.Login()
	return view.ReplaceUrl("/login", c, child)
}

func (s *HandlerSession) redirect(c echo.Context, uid uuid.UUID) error {
	// todo: check if there is a redirect parameter, if not go home

	ctx := c.Request().Context()
	u, err := s.services.GetUserByID(ctx, uid)
	if err != nil {
		log.Err(err)
	}

	return s.replaceEntry(c, u)
}
