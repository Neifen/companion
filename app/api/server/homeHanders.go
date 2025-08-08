package server

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/view"
	"net/http"
	"strconv"
)

func (s *HandlerSession) handleGetHome(c echo.Context) error {
	u := c.Get("u").(*userReq)

	if !u.isLoggedIn {
		chapters, err := s.store.ReadChaptersFromPlan(0)
		//todo real errors
		if err != nil {
			return c.JSON(http.StatusInternalServerError, err) // todo do better
		}
		bible := chapterModelToEntity(chapters)
		return view.HomeHTML(c, bible)
	}

	tracker, err := s.store.ReadTrackerFromUserId(u.id)
	//todo real errors
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker)
	return view.HomeHTML(c, bible)
}

// e.POST("/check-trackeditem/:itemId/:checked", s.handleCheckTrackeItem)
func (s *HandlerSession) handleCheckTrackeItem(c echo.Context) error {
	u := c.Get("u").(*userReq)
	itemId, err := strconv.ParseInt(c.Param("itemId"), 10, 64)
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}

	checked, err := strconv.ParseBool(c.Param("checked"))
	if err != nil {
		fmt.Println(err)
		return view.TrackerCheckHTMLError(c, itemId, !checked, err.Error())
	}

	if !u.isLoggedIn {
		//todo use cookies
		return nil
	}

	err = s.store.CheckTracked(u.id, itemId, checked)
	//todo real errors
	if err != nil {
		fmt.Println(err)
		return view.TrackerCheckHTMLError(c, itemId, !checked, err.Error())
	}

	return view.TrackerCheckHTML(c, itemId, checked)
}

func (s *HandlerSession) redirectToHome(c echo.Context, u *userReq) error {
	//todo why both again?
	//u := c.Get("u").(*userReq)

	if u == nil || !u.isLoggedIn {
		chapters, err := s.store.ReadChaptersFromPlan(0)
		//todo real errors
		if err != nil {
			fmt.Println(err)
			return c.JSON(http.StatusInternalServerError, err) // todo do better
		}
		bible := chapterModelToEntity(chapters)
		return view.HomeHTML(c, bible)
	}

	tracker, err := s.store.ReadTrackerFromUserId(u.id)
	//todo real errors
	if err != nil {
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker)
	return view.HomeHTML(c, bible)
}
