package server

import (
	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/api/storage"
	"github.com/neifen/htmx-login/app/view"
	"net/http"
)

func (s *HandlerSession) handleGetHome(c echo.Context) error {
	//u := c.Get("u").(*userReq)
	//if !u.isLoggedIn {
	//	return s.redirectToLogin(c)
	//}
	chapters, err := s.store.ReadChaptersFromPlan(0)
	if err != nil {
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}

	bible := storage.ChapterModelToEntity(chapters)
	return view.HomeHTML(c, bible)
}

func (s *HandlerSession) redirectToHome(c echo.Context, user *userReq) error {
	//todo why both again?
	chapters, err := s.store.ReadChaptersFromPlan(0)
	if err != nil {
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}

	bible := storage.ChapterModelToEntity(chapters)
	return view.HomeHTMLReplace(c, bible)
}
