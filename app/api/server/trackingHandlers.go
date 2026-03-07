package server

import (
	"net/http"
	"strconv"
	"time"

	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/view"
	"github.com/rs/zerolog/log"
)

// e.GET("/track-before/:date", s.loadBeforeItem, pasetoMiddleOpt())
func (s *HandlerSession) loadBeforeItem(c echo.Context) error {
	uid := ctxUID(c)
	date, err := time.Parse("January 2, 2006", c.Param("date"))
	if err != nil {
		log.Err(err).Msg("plan handler: get track-before - could not parse date")
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	tracker, hasMore, err := s.services.ReadTasksUntil(c.Request().Context(), uid, date)
	// todo real errors
	if err != nil {
		log.Err(err).Msg("plan handler: get track-before - could read tasks")
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker, hasMore)
	return view.PaginateTrackerListBefore(c, bible)
}

// e.GET("/track-after/:date", s.loadAfterItem, pasetoMiddleOpt())
func (s *HandlerSession) loadAfterItem(c echo.Context) error {
	uid := ctxUID(c)
	date, err := time.Parse("January 2, 2006", c.Param("date"))
	if err != nil {
		log.Err(err).Msg("plan handler: loadAfterItem - could not parse date")
		return view.ErrorHTML(c, "Something went wrong, contact admin")
	}

	tracker, hasMore, err := s.services.ReadTasksFrom(c.Request().Context(), uid, date.AddDate(0, 0, 1))
	// todo real errors
	if err != nil {
		log.Err(err).Msg("plan handler: loadAfterItem - could not read tasks")
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}
	bible := trackerModelToEntity(tracker, hasMore)
	return view.PaginateTrackerListAfter(c, bible)
}

// todo: rename route
// e.POST("/check-trackeditem/:itemId/:checked", s.handleCheckTrackeItem)
func (s *HandlerSession) checkTask(c echo.Context) error {
	itemID, err := strconv.ParseInt(c.Param("itemId"), 10, 64)
	if err != nil {
		log.Err(err).Msg("plan handler: check Task - could not parse int")
		return c.JSON(http.StatusInternalServerError, err) // todo do better
	}

	checked, err := strconv.ParseBool(c.Param("checked"))
	if err != nil {
		log.Err(err).Msg("plan handler: check Task - could not parse boolean")
		return view.TrackerCheckHTMLError(c, itemID, !checked, err.Error())
	}

	if err = s.services.CheckTask(c.Request().Context(), itemID, checked); err != nil {
		// todo real errors
		log.Err(err).Msg("plan handler: check Task")
		return view.TrackerCheckHTMLError(c, itemID, !checked, err.Error())
	}

	return view.TrackerCheckHTML(c, itemID, checked)
}
