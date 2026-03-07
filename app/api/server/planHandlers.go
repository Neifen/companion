package server

import (
	"strconv"
	"time"

	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/entities"
	"github.com/neifen/companion/app/view"
	"github.com/rs/zerolog/log"
)

// e.GET("/plan-settings", s.showPlanSettings)
func (s *HandlerSession) showPlanSettings(c echo.Context) error {
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

// e.POST("/plan-settings/delete-plan", s.deletePlan, pasetoMiddle())
func (s *HandlerSession) deletePlan(c echo.Context) error {
	uid := ctxUID(c)
	if err := s.services.DeleteUserTracker(c.Request().Context(), uid); err != nil {
		log.Err(err).Msg("Could not delete Plan")
		return view.ErrorHTML(c, "Could not delete the plan")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.emptyDashboardPage(c, uid)
}

// e.GET("/join-plan", s.joinPlanWindow)
func (s *HandlerSession) joinPlanWindow(c echo.Context) error {
	fromSettingsRaw := c.QueryParam("fromSettings")
	fromSettings, err := strconv.ParseBool(fromSettingsRaw)
	if err != nil {
		fromSettings = false
	}

	plansModel, err := s.services.GetAllPlans(c.Request().Context())
	if err != nil {
		log.Err(err).Msg("plan handler: get Join plan window - could not read all plans")
		return view.ErrorHTML(c, "Could not load list of plan")
	}

	var plans []*entities.Plan
	for _, planModel := range plansModel {
		plans = append(plans, entities.NewPlan(planModel.ID, planModel.Name, planModel.PlanDesc))
	}

	return view.NewTracker(c, fromSettings, plans) // todo change
}

// e.GET("/join-plan/confirm", s.confirmJoinPlan)
func (s *HandlerSession) confirmJoinPlan(c echo.Context) error {
	start := c.QueryParam("start")
	end := c.QueryParam("end")
	plan := c.QueryParam("plan")

	startTime, err := time.Parse("2006-01-02", start)
	if err != nil {
		log.Err(err).Msg("plan handler: get join plan confirmation window - could not parse time")
		return view.ErrorHTML(c, "Error with the time")
	}

	endTime, err := time.Parse("2006-01-02", end)
	if err != nil {
		log.Err(err).Msg("plan handler: get join plan confirmation window - could not parse time")
		return view.ErrorHTML(c, "Error with the time")
	}

	return view.ConfirmAddTracker(c, plan, start, end, startTime.Format("January 02, 2006"), endTime.Format("January 02, 2006")) // todo change
}

// e.POST("/join-plan/:planId/:start/:end", s.joinPlan, pasetoMiddle())
func (s *HandlerSession) joinPlan(c echo.Context) error {
	// todo change all
	uid := ctxUID(c)

	planIDRaw := c.Param("planId")
	startRaw := c.Param("start")
	endRaw := c.Param("end")

	planID, err := strconv.Atoi(planIDRaw)
	if err != nil {
		log.Err(err).Msg("plan handler: join plan - could not parse int")
		return view.ErrorHTML(c, "Issue creating new Plan")
	}

	err = s.services.CreateTracker(c.Request().Context(), uid, planID, startRaw, endRaw)
	if err != nil {
		log.Err(err).Msg("plan handler: join plan - could not create tracker")
		return view.ErrorHTML(c, "Issue creating new Plan")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.dashboardPage(c, uid)
}

// e.GET("/reset-plan", s.confirmPlanMoveStart) + query param start
func (s *HandlerSession) confirmPlanMoveStart(c echo.Context) error {
	startShort := c.QueryParam("start")
	moveEndRaw := c.QueryParam("moveEnd")
	moveEnd, err := strconv.ParseBool(moveEndRaw)
	if err != nil && moveEndRaw != "" {
		log.Err(err).Msg("plan handler: get move plan confirmation window - error parsing moveEnd")
		moveEnd = false
	}

	start, err := time.Parse("2006-01-02", startShort)
	if err != nil {
		log.Err(err).Msg("plan handler: get move plan confirmation window - error parsing date")
	}
	return view.ConfirmStartPlanPopup(c, start.Format("January 02, 2006"), startShort, moveEnd)
}

// e.GET("/move-end-confirm", s.confirmPlanMoveEnd) + query param end
func (s *HandlerSession) confirmPlanMoveEnd(c echo.Context) error {
	endShort := c.QueryParam("end")
	resetStartRaw := c.QueryParam("resetStart")
	resetStart, err := strconv.ParseBool(resetStartRaw)
	if err != nil && resetStartRaw != "" {
		log.Err(err).Msg("plan handler: get move plan end confirmation window - error parsing resetStart")
		resetStart = false
	}

	end, err := time.Parse("2006-01-02", endShort)
	if err != nil {
		log.Err(err).Msg("plan handler: get move plan end confirmation window - error parsing date")
	}
	return view.ConfirmEndPlanPopup(c, end.Format("January 02, 2006"), endShort, resetStart)
}

// e.GET("/move-start-popup", s.showMoveStart)
func (s *HandlerSession) showMoveStart(c echo.Context) error {
	start := c.Param("start")
	moveEndRaw := c.QueryParam("moveEnd")
	moveEnd, err := strconv.ParseBool(moveEndRaw)
	if err != nil && moveEndRaw != "" {
		log.Err(err).Msg("plan handler: move start window - error parsing moveEnd")
		moveEnd = false
	}

	return view.EditStartPopup(c, start, moveEnd)
}

// e.GET("/move-end-popup", s.showMoveEnd)
func (s *HandlerSession) showMoveEnd(c echo.Context) error {
	end := c.Param("end")
	resetStartRaw := c.QueryParam("resetStart")
	resetStart, err := strconv.ParseBool(resetStartRaw)
	if err != nil && resetStartRaw != "" {
		log.Err(err).Msg("plan handler: move end window - error parsing resetStart")
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
		log.Err(err).Msg("plan handler: move start window - error parsing moveEnd")
		moveEnd = false
	}

	err = s.services.MoveTrackerStart(c.Request().Context(), uid, start, moveEnd)
	if err != nil {
		log.Err(err).Msg("plan handler: move start - could not move tracker start")
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.dashboardPage(c, uid)
}

// e.POST("/move-end/:end", s.moveEnd, pasetoMiddle())?resetStart
func (s *HandlerSession) moveEnd(c echo.Context) error {
	uid := ctxUID(c)
	end := c.Param("end")
	resetStartRaw := c.QueryParam("resetStart")
	resetStart, err := strconv.ParseBool(resetStartRaw)
	if err != nil && resetStartRaw != "" {
		log.Err(err).Msg("plan handler: move end - could parse moveEnd")
		resetStart = false
	}

	err = s.services.MoveTrackerEnd(c.Request().Context(), uid, end, resetStart)
	if err != nil {
		log.Err(err).Msg("plan handler: move end - could not move end")
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}
	c.Response().Header().Add("HX-Retarget", "#base")
	c.Response().Header().Add("HX-Reswap", "innerHTML")
	return s.dashboardPage(c, uid)
}
