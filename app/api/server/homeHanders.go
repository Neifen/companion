package server

import (
	"fmt"
	"net/http"
	"time"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/entities"
	"github.com/neifen/companion/app/view"
	"github.com/rs/zerolog/log"
)

func (s *HandlerSession) entry(c echo.Context) error {
	u := ctxUID(c)
	return s.routeEntry(c, u)
}

func (s *HandlerSession) dashboard(c echo.Context) error {
	u := ctxUID(c)
	return s.viewDashboard(c, u)
}

func (s *HandlerSession) welcome(c echo.Context) error {
	return s.viewWelcome(c)
}

// /////////////////// Replacements ////////////////////
func (s *HandlerSession) replaceEntry(c echo.Context, uid uuid.UUID) error {
	// might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/")
	return s.routeEntry(c, uid)
}

func (s *HandlerSession) replaceOnobarding(c echo.Context, uid uuid.UUID) error {
	// might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/")
	return s.viewOnboarding(c, uid)
}

// /////////////////// Routing Entry ////////////////////

func (s *HandlerSession) routeEntry(c echo.Context, uid uuid.UUID) error {
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

// ////////////////////// Views ///////////////////////////////

func (s *HandlerSession) viewWelcome(c echo.Context) error {
	return view.Welcome(c)
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
