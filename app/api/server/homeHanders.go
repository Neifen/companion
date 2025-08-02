package server

import (
	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/view"
)

func (s *HandlerSession) handleGetHome(c echo.Context) error {
	//u := c.Get("u").(*userReq)
	//if !u.isLoggedIn {
	//	return s.redirectToLogin(c)
	//}

	return view.HomeHTML(c)
}

func (s *HandlerSession) redirectToHome(c echo.Context, user *userReq) error {
	return view.HomeHTMLReplace(c)
}
