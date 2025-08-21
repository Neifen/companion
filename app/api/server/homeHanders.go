package server

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/entities"
	"github.com/neifen/htmx-login/app/view"
	"net/http"
	"strconv"
	"time"
)

func (s *HandlerSession) handleGetHome(c echo.Context) error {
	u := c.Get("u").(*userReq)
	return s.viewHome(c, u)
}

func (s *HandlerSession) viewHome(c echo.Context, u *userReq) error {
	//might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/")

	var bible *entities.TrackedBible
	if !u.isLoggedIn {
		chapters, err := s.store.ReadChaptersFromPlan(0)
		//todo real errors
		if err != nil {
			fmt.Println(err)
			return c.JSON(http.StatusInternalServerError, err) // todo do better
		}
		bible = chapterModelToEntity(chapters)
	} else {
		tracker, hasMore, err := s.store.ReadTrackerFromUserIdFrom(0, time.Now().AddDate(0, 0, -2))
		if err != nil {
			fmt.Println(err)
			return c.JSON(http.StatusInternalServerError, err) // todo do better
		}
		bible = trackerModelToEntity(tracker, hasMore)
	}

	return view.HomeHTML(c, bible, entities.NewViewUser(u.name, u.isLoggedIn))
}

// e.GET("/track-before/:date", s.handleGetBeforeItem, pasetoMiddleOpt())
func (s *HandlerSession) handleGetBeforeItem(c echo.Context) error {
	u := c.Get("u").(*userReq)
	date, err := time.Parse("January 2, 2006", c.Param("date"))

	tracker, hasMore, err := s.store.ReadTrackerFromUserIdUntil(u.id, date)

	//todo real errors
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker, hasMore)
	return view.PaginateTrackerListBefore(c, bible)
}

// e.GET("/track-after/:date", s.handleGetAfterItem, pasetoMiddleOpt())
func (s *HandlerSession) handleGetAfterItem(c echo.Context) error {
	u := c.Get("u").(*userReq)
	date, err := time.Parse("January 2, 2006", c.Param("date"))

	tracker, hasMore, err := s.store.ReadTrackerFromUserIdFrom(u.id, date.AddDate(0, 0, 1))
	//todo real errors
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker, hasMore)
	return view.PaginateTrackerListAfter(c, bible)
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

	err = s.store.CheckTracked(itemId, checked)
	//todo real errors
	if err != nil {
		fmt.Println(err)
		return view.TrackerCheckHTMLError(c, itemId, !checked, err.Error())
	}

	return view.TrackerCheckHTML(c, itemId, checked)
}

// e.GET("/plan-settings", s.handlePlanSettings)
func (s *HandlerSession) handlePlanSettings(c echo.Context) error {
	return view.PlanSettingsHMTL(c)
}

// e.GET("/reset-plan", s.handleConfirmMoveStart)
func (s *HandlerSession) handleConfirmMoveStart(c echo.Context) error {
	return view.ConfirmPlanPopup(c)
}

// e.GET("/move-start-popup", s.handleMoveStartPopup)
func (s *HandlerSession) handleMoveStartPopup(c echo.Context) error {
	return view.EditStartPopup(c)
}

// e.GET("/move-end-popup", s.handleMoveEndPopup)
func (s *HandlerSession) handleMoveEndPopup(c echo.Context) error {
	return view.EditEndPopup(c)
}

// e.GET("/reset-plan", s.moveStart, pasetoMiddle())
func (s *HandlerSession) moveStart(c echo.Context) error {
	u := c.Get("u").(*userReq)
	today := time.Now()

	err := s.store.MoveTrackerStartDate(u.id, today)
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	tracker, hasMore, err := s.store.ReadTrackerFromUserIdFrom(0, time.Now().AddDate(0, 0, -2))
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}
	bible := trackerModelToEntity(tracker, hasMore)

	return view.HomeHTML(c, bible, entities.NewViewUser(u.name, u.isLoggedIn))
}
