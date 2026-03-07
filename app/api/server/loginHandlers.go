package server

import (
	"fmt"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/view"
	"github.com/rs/zerolog/log"

	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/api/crypto"
	"github.com/neifen/companion/app/api/storage/auth"
)

func (s *HandlerSession) showLogin(c echo.Context) error {
	child := view.Login()
	return view.RenderView(c, child)
}

func (s *HandlerSession) login(c echo.Context) error {
	email := c.FormValue("email")
	pw := c.FormValue("password")
	remember := c.FormValue("remember") == "on"

	u, err := s.services.Authenticate(c.Request().Context(), c.RealIP(), email, pw, remember)
	if err != nil {
		fmt.Printf("api: handlePostLogin: \n%+v\n", err)
		return replaceLogin(c)
	}

	tokenToCookie(u.Access, u.Refresh, c)
	return s.replaceEntry(c, u.User)
}

func (s *HandlerSession) logout(c echo.Context) error {
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

func (s *HandlerSession) showSignup(c echo.Context) error {
	child := view.Signup()
	return view.RenderView(c, child)
}

func (s *HandlerSession) signup(c echo.Context) error {
	email := c.FormValue("email")
	pw := c.FormValue("password")
	name := c.FormValue("name")

	u, err := auth.NewUserModel(name, email, pw)
	if err != nil {
		log.Err(err).Msg("Signup: Error creating new User model")
		// todo show error
		return s.showSignup(c)
	}

	ctx := c.Request().Context()
	ip := c.RealIP()

	err = s.services.NewUser(ctx, ip, u)
	if err != nil {
		log.Err(err).Msg("Signup: Error creating new User")
		// todo show error
		return s.showSignup(c)
	}

	access, err := s.services.CreateAccessToken(u.ID)
	if err != nil {
		log.Err(err).Msg("Signup: Error creating new Access Token")
		// todo show error
		return replaceLogin(c)
	}

	refresh, err := s.services.CreateRefreshToken(ctx, u.ID, false)
	if err != nil {
		log.Err(err).Msg("Signup: Error creating new Refresh Token")
		// todo show error
		return replaceLogin(c)
	}

	tokenToCookie(access, refresh, c)
	setCtxUser(c, u)

	return s.showVerify(c)
}

func (s *HandlerSession) verifyShort(c echo.Context) error {
	shortToken := c.FormValue("stoken")
	uid := ctxUID(c)

	if shortToken == "" {
		return s.verifyPage(c, uid)
	}

	ip := c.RealIP()
	ctx := c.Request().Context()
	u, err := s.services.CheckShortVerificationToken(ctx, ip, shortToken, uid)
	if err != nil {
		//todo: show error
		return s.verifyPage(c, u.ID)
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
		log.Err(err).Msg("Renew Signup Token: Error Requesting new Token")

		return replaceLogin(c)
	}

	return s.replaceVerify(c, u.ID)
}

func (s *HandlerSession) forgotPasswordPage(c echo.Context) error {
	child := view.ForgotPassword()
	return view.RenderView(c, child)
}

func (s *HandlerSession) forgotPassword(c echo.Context) error {
	email := c.FormValue("email")
	ctx := c.Request().Context()
	ip := c.RealIP()

	err := s.services.RequestResetPassword(ctx, ip, email)
	if err != nil {
		log.Err(err).Msg("Forgot Password: Error Requesting Token")
		//todo: show error
		return s.forgotPasswordPage(c)
	}
	return s.resetPasswordShortPage(c)
}

func (s *HandlerSession) resetPasswordShortPage(c echo.Context) error {
	email := c.FormValue("email")
	if email == "" {
		log.Warn().Msg("Verify Recovery Page, email was empty. Back to recovery page")
		return replace(c, "/forgot-password", s.forgotPasswordPage)
	}

	ctx := c.Request().Context()
	//todo: maybe this could be passed in this method (get it from requestPwReset)
	exp, err := s.services.GetPasswordRecoveryTokenExpiration(ctx, email)
	if err != nil {
		log.Err(err).Msg("Reset Password Short Page: Error Requesting Token Expiration Date")
	}

	child := view.ResetPasswordShort(exp, email)
	return view.RenderView(c, child)
}

func (s *HandlerSession) verifyRecoveryShort(c echo.Context) error {
	email := c.FormValue("email")
	short := c.FormValue("stoken")
	password := c.FormValue("password")
	if email == "" {
		log.Warn().Msg("Verify Recovery Short, email was empty. Back to forgot pw page")
		return replace(c, "/forgot-password", s.forgotPasswordPage)
	}

	if short == "" {
		log.Warn().Msg("Verify Recovery Short, short token was empty. Back to verify page")
		return s.resetPasswordShortPage(c)
	}

	if password == "" {
		log.Warn().Msg("Verify Recovery Short, password was empty. Back to verify page")
		//todo: what if I refresh after this does it show?
		//todo: error
		return s.resetPasswordShortPage(c)
	}

	ctx := c.Request().Context()
	ip := c.RealIP()

	err := s.services.ResetPasswordShort(ctx, ip, email, short, password)
	if err != nil {
		log.Err(err).Msg("Error verifying short recovery token")
		//todo: show error
		return s.resetPasswordShortPage(c)
	}

	//todo: why am I logged in at this point?
	return replace(c, "/login", s.showLogin)
}

func (s *HandlerSession) resetPasswordLongPage(c echo.Context) error {
	long := c.QueryParam("ltoken")

	if long == "" {
		log.Warn().Msg("Verify Recovery Long, long token was empty. Back to revert page")
		return replace(c, "/forgot-password", s.forgotPasswordPage)
	}

	child := view.ResetPasswordLong(long)
	return view.RenderView(c, child)
}

func (s *HandlerSession) verifyRecoveryLong(c echo.Context) error {
	long := c.FormValue("ltoken")
	password := c.FormValue("password")

	if long == "" {
		log.Warn().Msg("Verify Recovery Long, long token was empty. Back to revert page")
		return replace(c, "/forgot-password", s.forgotPasswordPage)
	}

	if password == "" {
		log.Warn().Msg("Verify Recovery Long, password was empty. Back to long recovery page page")
		url := fmt.Sprintf("/reset-password?ltoken=%s", long)
		//todo: will this work with the ltoken?
		return replace(c, url, s.resetPasswordLongPage)
	}

	ctx := c.Request().Context()
	ip := c.RealIP()

	err := s.services.ResetPasswordLong(ctx, ip, long, password)
	if err != nil {
		log.Err(err).Msg("Verify PW Recovery Long: Error verifying long token")
		//todo: show error
		return replace(c, "/forgot-password", s.forgotPasswordPage)
	}

	return replace(c, "/login", s.login)
}

func (s *HandlerSession) renewRecoveryToken(c echo.Context) error {
	email := c.FormValue("email")
	if email == "" {
		log.Warn().Msg("Verify Recovery Page, email was empty. Back to recovery page")
		return replace(c, "/recovery", s.forgotPasswordPage)
	}

	ctx := c.Request().Context()
	ip := c.RealIP()

	err := s.services.RequestResetPassword(ctx, ip, email)
	if err != nil {
		log.Err(err).Msg("Renew recovery token: Error requesting new token")
	}

	//todo: replace?
	return s.resetPasswordShortPage(c)
}

func (s *HandlerSession) showVerify(c echo.Context) error {
	longToken := c.QueryParam("ltoken")
	if longToken == "" {
		uid := ctxUID(c)
		return s.verifyPage(c, uid)
	}

	ip := c.RealIP()
	ctx := c.Request().Context()
	u, err := s.services.CheckLongVerificationToken(ctx, ip, longToken)
	if err != nil {
		//todo: show error
		return s.verifyPage(c, u.ID)
	}

	return s.replaceOnobarding(c, u.ID)
}

// /////////////////// Replacements ////////////////////

func (s *HandlerSession) replaceVerify(c echo.Context, uid uuid.UUID) error {
	// might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/verify-signup")
	return s.verifyPage(c, uid)
}

func replaceLogin(c echo.Context) error {
	child := view.Login()
	return view.ReplaceURL("/login", c, child)
}

func (s *HandlerSession) replaceRecovery(c echo.Context) error {
	return replace(c, "/recovery", s.forgotPasswordPage)
}

// /////////////////// Pages ////////////////////

func (s *HandlerSession) verifyPage(c echo.Context, uid uuid.UUID) error {

	ctx := c.Request().Context()
	exp, err := s.services.GetVerificationTokenExpiration(ctx, uid)
	if err != nil {
		//todo: add error
		log.Err(err).Msg("Verify Signup Page: Error getting token expiration")
	}
	log.Info().Any("exp", exp)

	child := view.Verify(exp)
	return view.RenderView(c, child)
}

// /////////////////// Helpers ////////////////////
func (s *HandlerSession) refreshToken(c echo.Context) (*uuid.UUID, error) {
	refresh, err := c.Cookie("refresh")
	if err != nil {
		return nil, fmt.Errorf("auth api: refresh %w", err)
	}

	if refresh == nil {
		return nil, fmt.Errorf("no refresh token in cookie %q", "refresh")
	}

	auth, err := s.services.RefreshToken(c.Request().Context(), c.RealIP(), refresh.Value)
	if err != nil {
		return nil, fmt.Errorf("auth api: refresh token %w", err)
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

func (s *HandlerSession) redirect(c echo.Context, uid uuid.UUID) error {
	// todo: check if there is a redirect parameter, if not go home

	ctx := c.Request().Context()
	u, err := s.services.GetUserByID(ctx, uid)
	if err != nil {
		log.Err(err).Msg("Verify Signup Page: Error getting user by ID")
	}

	return s.replaceEntry(c, u)
}
