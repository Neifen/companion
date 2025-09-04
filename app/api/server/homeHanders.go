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

	welcome := !u.isLoggedIn
	if !welcome {
		tracker, hasMore, err := s.store.ReadTrackerFromUserIdFrom(0, time.Now().AddDate(0, 0, -2))
		if err != nil {
			fmt.Println(err)
			return c.JSON(http.StatusInternalServerError, err) // todo do better
		}

		if len(tracker) != 0 {
			bible = trackerModelToEntity(tracker, hasMore)
		} else {
			welcome = true
		}
	}

	if welcome {
		chapters, err := s.store.ReadChaptersFromPlan(0)

		//todo real errors
		if err != nil {
			fmt.Println(err)
			return c.JSON(http.StatusInternalServerError, err) // todo do better
		}

		bible = chapterModelToEntity(chapters)
	}

	viewU := entities.NewViewUser(u.name, u.isLoggedIn)
	return view.HomeHTML(c, bible, viewU, welcome)
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

// e.GET("/plan-settings/delete-plan", s.handleDeletePlanConfirm, pasetoMiddle())
func (s *HandlerSession) handleDeletePlanConfirm(c echo.Context) error {
	return view.ConfirmDeletePlan(c)
}

// e.POST("/plan-settings/delete-plan", s.handleDeletePlan, pasetoMiddle())
func (s *HandlerSession) handleDeletePlan(c echo.Context) error {
	u := c.Get("u").(*userReq)
	if !u.isLoggedIn {
		return view.ErrorHTML(c, "not logged in")
	}

	set, err := s.store.ReadTrackerSettingsFromUser(u.id)
	if err != nil {
		fmt.Println("Could not find tracker_to_user: ", err)
		return view.ErrorHTML(c, "could not find tracker for user")
	}

	err = s.store.DeleteTracker(set.ID)
	if err != nil {
		fmt.Println("Could not delete tracker: ", err)
		return view.ErrorHTML(c, "Could not delete the plan")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.viewHome(c, u)
}

// e.GET("/join-plan", s.handleJoinPlanWindow)
func (s *HandlerSession) handleJoinPlanWindow(c echo.Context) error {
	fromSettingsRaw := c.QueryParam("fromSettings")
	fromSettings, err := strconv.ParseBool(fromSettingsRaw)
	if err != nil {
		fromSettings = false
	}

	plansModel, err := s.store.ReadAllPlans()
	if err != nil {
		fmt.Println("Could not read all plans: ", err)
		return view.ErrorHTML(c, "Could not load list of plan")
	}

	var plans []*entities.Plan
	for _, planModel := range plansModel {
		plans = append(plans, entities.NewPlan(planModel.ID, planModel.Name, planModel.PlanDesc))
	}

	// TODO get all plans

	return view.NewTracker(c, fromSettings, plans) //todo change
}

// e.GET("/join-plan/confirm", s.handleJoinPlanConfirm)
func (s *HandlerSession) handleJoinPlanConfirm(c echo.Context) error {
	start := c.QueryParam("start")
	end := c.QueryParam("end")
	plan := c.QueryParam("plan")

	startTime, err := time.Parse("2006-01-02", start)
	if err != nil {
		fmt.Println("error parsing time: ", err)
		return view.ErrorHTML(c, "Error with the time")
	}

	endTime, err := time.Parse("2006-01-02", end)
	if err != nil {
		fmt.Println("error parsing time: ", err)
		return view.ErrorHTML(c, "Error with the time")
	}

	return view.ConfirmAddTracker(c, plan, start, end, startTime.Format("January 02, 2006"), endTime.Format("January 02, 2006")) //todo change
}

// e.POST("/join-plan/:planId/:start/:end", s.handleJoinPlan, pasetoMiddle())
func (s *HandlerSession) handleJoinPlan(c echo.Context) error {
	//todo change all
	u := c.Get("u").(*userReq)
	if !u.isLoggedIn {
		return view.ErrorHTML(c, "not logged in")
	}

	planIdRaw := c.Param("planId")
	startRaw := c.Param("start")
	endRaw := c.Param("end")

	planId, err := strconv.Atoi(planIdRaw)
	if err != nil {
		fmt.Println("Could not transform planId to int: ", err)
		return view.ErrorHTML(c, "Issue creating new Plan")
	}

	err = s.store.CreateTracker(u.id, planId, startRaw, endRaw)
	if err != nil {
		fmt.Println("Could not create tracker: ", err)
		return view.ErrorHTML(c, "Issue creating new Plan")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.viewHome(c, u)
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
