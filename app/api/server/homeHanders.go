package server

import (
	"fmt"
	"net/http"
	"strconv"
	"time"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/entities"
	"github.com/neifen/companion/app/view"
	"github.com/rs/zerolog/log"
)

func ctxUser(c echo.Context) *userReq {
	var u *userReq
	if temp := c.Get("uid"); temp != nil {
		u = temp.(*userReq)
	}
	return u
}

func ctxUID(c echo.Context) uuid.UUID {
	var uid uuid.UUID
	if temp := c.Get("uid"); temp != nil {
		uid = temp.(uuid.UUID)
	}
	return uid
}

func (s *HandlerSession) entry(c echo.Context) error {
	u := ctxUID(c)
	return s.viewEntry(c, u)
}

func (s *HandlerSession) dashboard(c echo.Context) error {
	u := ctxUID(c)
	return s.viewDashboard(c, u)
}

func (s *HandlerSession) welcome(c echo.Context) error {
	return s.viewWelcome(c)
}

// rename replaceEntry?
func (s *HandlerSession) replaceEntry(c echo.Context, uid uuid.UUID) error {
	// might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/")
	return s.viewEntry(c, uid)
}

func (s *HandlerSession) viewEntry(c echo.Context, uid uuid.UUID) error {
	if uid == uuid.Nil {
		return s.viewWelcome(c)
	}

	//todo: might be a good idea to save the onboarding status in user?
	tracker, _, err := s.services.ReadTasksFrom(c.Request().Context(), uid, time.Now().AddDate(0, 0, -2))
	if err != nil {
		log.Err(err)
		//todo: with error
		return s.viewEmptyDashboard(c, uid)
	}

	if len(tracker) != 0 {
		return s.viewOnboarding(c, uid)
	}

	return s.viewDashboard(c, uid)
}

func (s *HandlerSession) viewWelcome(c echo.Context) error {
	return view.Welcome(c)
}

func (s *HandlerSession) replaceOnobarding(c echo.Context, uid uuid.UUID) error {
	// might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/")
	return s.viewOnboarding(c, uid)
}

func (s *HandlerSession) viewOnboarding(c echo.Context, uid uuid.UUID) error {
	chapters, err := s.services.GetPlansChapters(c.Request().Context(), 0)
	// todo real errors
	if err != nil {
		fmt.Printf("Issue with getting welcome screen: \n%+v\n", err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}

	bible := chapterModelToEntity(chapters)

	name := ""
	viewU := entities.NewViewUser(name, true)
	return view.HomeHTML(c, bible, viewU, true)

}

func (s *HandlerSession) viewDashboard(c echo.Context, uid uuid.UUID) error {
	var bible *entities.TrackedBible

	tracker, hasMore, err := s.services.ReadTasksFrom(c.Request().Context(), uid, time.Now().AddDate(0, 0, -2))
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}

	bible = trackerModelToEntity(tracker, hasMore)

	name := ""
	viewU := entities.NewViewUser(name, true)
	return view.HomeHTML(c, bible, viewU, false)
}

func (s *HandlerSession) viewEmptyDashboard(c echo.Context, uid uuid.UUID) error {
	bible := &entities.TrackedBible{
		HasMore:       false,
		TrackedGroups: []*entities.TrackedGroup{},
	}

	name := ""
	viewU := entities.NewViewUser(name, true)
	return view.HomeHTML(c, bible, viewU, false)
}

// e.GET("/track-before/:date", s.handleGetBeforeItem, pasetoMiddleOpt())
func (s *HandlerSession) handleGetBeforeItem(c echo.Context) error {
	uid := ctxUID(c)
	date, err := time.Parse("January 2, 2006", c.Param("date"))
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	tracker, hasMore, err := s.services.ReadTasksUntil(c.Request().Context(), uid, date)
	// todo real errors
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker, hasMore)
	return view.PaginateTrackerListBefore(c, bible)
}

// e.GET("/track-after/:date", s.handleGetAfterItem, pasetoMiddleOpt())
func (s *HandlerSession) handleGetAfterItem(c echo.Context) error {
	uid := ctxUID(c)
	date, err := time.Parse("January 2, 2006", c.Param("date"))
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	tracker, hasMore, err := s.services.ReadTasksFrom(c.Request().Context(), uid, date.AddDate(0, 0, 1))
	// todo real errors
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker, hasMore)
	return view.PaginateTrackerListAfter(c, bible)
}

// e.POST("/check-trackeditem/:itemId/:checked", s.handleCheckTrackeItem)
func (s *HandlerSession) handleCheckTrackedItem(c echo.Context) error {
	itemID, err := strconv.ParseInt(c.Param("itemId"), 10, 64)
	if err != nil {
		fmt.Println(err)
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}

	checked, err := strconv.ParseBool(c.Param("checked"))
	if err != nil {
		fmt.Println(err)
		return view.TrackerCheckHTMLError(c, itemID, !checked, err.Error())
	}

	if err = s.services.CheckTask(c.Request().Context(), itemID, checked); err != nil {
		// todo real errors
		fmt.Println(err)
		return view.TrackerCheckHTMLError(c, itemID, !checked, err.Error())
	}

	return view.TrackerCheckHTML(c, itemID, checked)
}

// e.GET("/plan-settings", s.handlePlanSettings)
func (s *HandlerSession) handlePlanSettings(c echo.Context) error {
	uid := ctxUID(c)

	settings, err := s.services.ReadUserTracker(c.Request().Context(), uid)
	if err != nil {
		return view.ErrorHTML(c, err.Error())
	}

	viewSettings := entities.NewViewSettings(settings.StartDate, settings.EndDate)
	return view.PlanSettingsHMTL(c, viewSettings)
}

// e.GET("/plan-settings/delete-plan", s.handleDeletePlanConfirm, pasetoMiddle())
func (s *HandlerSession) handleDeletePlanConfirm(c echo.Context) error {
	return view.ConfirmDeletePlan(c)
}

// e.POST("/plan-settings/delete-plan", s.handleDeletePlan, pasetoMiddle())
func (s *HandlerSession) handleDeletePlan(c echo.Context) error {
	uid := ctxUID(c)
	if err := s.services.DeleteUserTracker(c.Request().Context(), uid); err != nil {
		fmt.Println("Could not delete tracker: ", err)
		return view.ErrorHTML(c, "Could not delete the plan")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.viewEmptyDashboard(c, uid)
}

// e.GET("/join-plan", s.handleJoinPlanWindow)
func (s *HandlerSession) handleJoinPlanWindow(c echo.Context) error {
	fromSettingsRaw := c.QueryParam("fromSettings")
	fromSettings, err := strconv.ParseBool(fromSettingsRaw)
	if err != nil {
		fromSettings = false
	}

	plansModel, err := s.services.GetAllPlans(c.Request().Context())
	if err != nil {
		fmt.Println("Could not read all plans: ", err)
		return view.ErrorHTML(c, "Could not load list of plan")
	}

	var plans []*entities.Plan
	for _, planModel := range plansModel {
		plans = append(plans, entities.NewPlan(planModel.ID, planModel.Name, planModel.PlanDesc))
	}

	return view.NewTracker(c, fromSettings, plans) // todo change
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

	return view.ConfirmAddTracker(c, plan, start, end, startTime.Format("January 02, 2006"), endTime.Format("January 02, 2006")) // todo change
}

// e.POST("/join-plan/:planId/:start/:end", s.handleJoinPlan, pasetoMiddle())
func (s *HandlerSession) handleJoinPlan(c echo.Context) error {
	// todo change all
	uid := ctxUID(c)

	planIDRaw := c.Param("planId")
	startRaw := c.Param("start")
	endRaw := c.Param("end")

	planID, err := strconv.Atoi(planIDRaw)
	if err != nil {
		fmt.Println("Could not transform planId to int: ", err)
		return view.ErrorHTML(c, "Issue creating new Plan")
	}

	err = s.services.CreateTracker(c.Request().Context(), uid, planID, startRaw, endRaw)
	if err != nil {
		fmt.Println("Could not create tracker: ", err)
		return view.ErrorHTML(c, "Issue creating new Plan")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.viewDashboard(c, uid)
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
	uid := ctxUID(c)
	start := c.Param("start")

	moveEndRaw := c.QueryParam("moveEnd")
	moveEnd, err := strconv.ParseBool(moveEndRaw)
	if err != nil && moveEndRaw != "" {
		fmt.Println("error parsing moveEnd:", err)
		moveEnd = false
	}

	err = s.services.MoveTrackerStart(c.Request().Context(), uid, start, moveEnd)
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.viewDashboard(c, uid)
}

// e.POST("/move-end/:end", s.moveEnd, pasetoMiddle())?resetStart
func (s *HandlerSession) moveEnd(c echo.Context) error {
	uid := ctxUID(c)
	end := c.Param("end")
	resetStartRaw := c.QueryParam("resetStart")
	resetStart, err := strconv.ParseBool(resetStartRaw)
	if err != nil && resetStartRaw != "" {
		fmt.Println("error parsing moveEnd:", err)
		resetStart = false
	}

	err = s.services.MoveTrackerEnd(c.Request().Context(), uid, end, resetStart)
	if err != nil {
		fmt.Println(err)
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}
	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.viewDashboard(c, uid)
}
