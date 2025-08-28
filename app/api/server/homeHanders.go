package server

import (
	"fmt"
	"net/http"
	"strconv"
	"time"

	"github.com/labstack/echo/v4"
	"github.com/neifen/htmx-login/app/entities"
	"github.com/neifen/htmx-login/app/view"
)

func (s *HandlerSession) handleGetHome(c echo.Context) error {
	u := c.Get("u").(*userReq)
	return s.viewHome(c, u)
}

func (s *HandlerSession) replaceHome(c echo.Context, u *userReq) error {
	//might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/")
	return s.viewHome(c, u)
}

func (s *HandlerSession) viewHome(c echo.Context, u *userReq) error {
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
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

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
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

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
	u := c.Get("u").(*userReq)
	if !u.isLoggedIn {
		return view.ErrorHTML(c, "not logged in")
	}
	settings, err := s.store.ReadTrackerSettingsFromUser(u.id)
	if err != nil {
		return view.ErrorHTML(c, err.Error())
	}

	viewSettings := entities.NewViewSettings(settings.FromDate, settings.ToDate)
	return view.PlanSettingsHMTL(c, viewSettings)
}

// e.GET("/reset-plan", s.handleConfirmMoveStart) + query param start
func (s *HandlerSession) handleConfirmMoveStart(c echo.Context) error {
	startShort := c.QueryParam("start")
	moveEndRaw := c.QueryParam("moveEnd")
	moveEnd, err := strconv.ParseBool(moveEndRaw)
	if err != nil && moveEndRaw != "" {
		fmt.Println("error parsing moveEnd:", err)
		moveEnd = false
	}

	start, err := time.Parse("2006-01-02", startShort)
	if err != nil {
		fmt.Println("error parsing date:", err)
	}
	return view.ConfirmStartPlanPopup(c, start.Format("January 02, 2006"), startShort, moveEnd)
}

// e.GET("/move-end-confirm", s.handleConfirmMoveEnd) + query param end
func (s *HandlerSession) handleConfirmMoveEnd(c echo.Context) error {
	endShort := c.QueryParam("end")
	resetStartRaw := c.QueryParam("resetStart")
	resetStart, err := strconv.ParseBool(resetStartRaw)
	if err != nil && resetStartRaw != "" {
		fmt.Println("error parsing resetStart:", err)
		resetStart = false
	}

	end, err := time.Parse("2006-01-02", endShort)
	if err != nil {
		fmt.Println("error parsing date:", err)
	}
	return view.ConfirmEndPlanPopup(c, end.Format("January 02, 2006"), endShort, resetStart)
}

// e.GET("/move-start-popup", s.handleMoveStartPopup)
func (s *HandlerSession) handleMoveStartPopup(c echo.Context) error {
	start := c.Param("start")
	moveEndRaw := c.QueryParam("moveEnd")
	moveEnd, err := strconv.ParseBool(moveEndRaw)
	if err != nil && moveEndRaw != "" {
		fmt.Println("error parsing moveEnd:", err)
		moveEnd = false
	}

	return view.EditStartPopup(c, start, moveEnd)
}

// e.GET("/move-end-popup", s.handleMoveEndPopup)
func (s *HandlerSession) handleMoveEndPopup(c echo.Context) error {
	end := c.Param("end")
	resetStartRaw := c.QueryParam("resetStart")
	resetStart, err := strconv.ParseBool(resetStartRaw)
	if err != nil && resetStartRaw != "" {
		fmt.Println("error parsing resetStart:", err)
		resetStart = false
	}

	return view.EditEndPopup(c, end, resetStart)
}

// e.GET("/reset-plan", s.moveStart, pasetoMiddle())?moveEnd
func (s *HandlerSession) moveStart(c echo.Context) error {
	u := c.Get("u").(*userReq)
	startRaw := c.Param("start")
	start, err := time.Parse("2006-01-02", startRaw)
	if err != nil {
		fmt.Println("error parsing start:", err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	moveEndRaw := c.QueryParam("moveEnd")
	moveEnd, err := strconv.ParseBool(moveEndRaw)
	if err != nil && moveEndRaw != "" {
		fmt.Println("error parsing moveEnd:", err)
		moveEnd = false
	}
	settings, err := s.store.ReadTrackerSettingsFromUser(u.id)
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	if !moveEnd && settings.ToDate.Compare(start) <= 0 {
		errstr := fmt.Sprintf("Start date (%s) needs to be before end date (%s)", start.Format("2006-01-02"), settings.ToDate.Format("2006-01-02"))
		fmt.Println(errstr)
		return view.ErrorHTML(c, errstr)
	}

	if moveEnd {
		diff := start.Sub(settings.FromDate)
		err = s.store.MoveTrackerDates(u.id, int(diff.Hours())/24)
		if err != nil {
			fmt.Println(err)
			return view.ErrorHTML(c, "Something went wrong, contact admin")
		}

		c.Response().Header().Add("HX-Retarget", "#base")
		c.Response().Header().Add("HX-Reswap", "innerHTML")
		return s.viewHome(c, u)
	} else {
		err = s.store.MoveTrackerStartDate(u.id, startRaw)
		if err != nil {
			fmt.Println(err)
			return view.ErrorHTML(c, "Something went wrong, contact admin")
		}

		c.Response().Header().Add("HX-Retarget", "#base")
		c.Response().Header().Add("HX-Reswap", "innerHTML")
		return s.viewHome(c, u)
	}
}

// e.POST("/move-end/:end", s.moveEnd, pasetoMiddle())?resetStart
func (s *HandlerSession) moveEnd(c echo.Context) error {
	u := c.Get("u").(*userReq)
	endRaw := c.Param("end")
	resetStartRaw := c.QueryParam("resetStart")
	resetStart, err := strconv.ParseBool(resetStartRaw)
	if err != nil && resetStartRaw != "" {
		fmt.Println("error parsing moveEnd:", err)
		resetStart = false
	}

	var start time.Time
	if resetStart {
		start = time.Now()
	} else {
		settings, err := s.store.ReadTrackerSettingsFromUser(u.id)
		if err != nil {
			fmt.Println(err)
			return view.ErrorHTML(c, "Something went wrong, contact admin")
		}

		start = settings.FromDate
	}

	end, err := time.Parse("2006-01-02", endRaw)
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	startRaw := start.Format("2006-01-02")
	if end.Compare(start) <= 0 {
		errstr := fmt.Sprintf("Start date (%s) needs to be before end date (%s)", startRaw, endRaw)
		fmt.Println(errstr)
		return view.ErrorHTML(c, errstr)
	}

	if resetStart {
		err = s.store.MoveTrackerStartEndDate(u.id, startRaw, endRaw)
		if err != nil {
			fmt.Println(err)
			return view.ErrorHTML(c, "Something went wrong, contact admin")
		}
		c.Response().Header().Add("HX-Retarget", "#base")
		c.Response().Header().Add("HX-Reswap", "innerHTML")
		return s.viewHome(c, u)
	} else {
		err = s.store.MoveTrackerEndDate(u.id, endRaw)
		if err != nil {
			fmt.Println(err)
			return view.ErrorHTML(c, "Something went wrong, contact admin")
		}

		c.Response().Header().Add("HX-Retarget", "#base")
		c.Response().Header().Add("HX-Reswap", "innerHTML")
		return s.viewHome(c, u)
	}
}
