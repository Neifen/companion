package server

import (
	"fmt"
	"net/http"
	"time"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/neifen/companion/app/entities"
	"github.com/neifen/companion/app/view"
	"github.com/rs/zerolog/log"
)

func (s *HandlerSession) entry(c echo.Context) error {
	u := ctxUser(c)
	return s.routeEntry(c, u)
}

func (s *HandlerSession) dashboard(c echo.Context) error {
	uid := ctxUID(c)
	return s.dashboardPage(c, uid)
}

func (s *HandlerSession) welcome(c echo.Context) error {
	return s.welcomePage(c)
}

// /////////////////// Replacements ////////////////////
func (s *HandlerSession) replaceEntry(c echo.Context, u *auth.UserModel) error {
	// might have to push the url
	c.Response().Header().Set("HX-Replace-Url", "/")
	return s.routeEntry(c, u)
}

func (s *HandlerSession) replaceOnobarding(c echo.Context, uid uuid.UUID) error {
	// might have to push the url
	return replaceUID(c, "/", uid, s.onboardingPage)
}

// todo: uid/user -> authUser object
func replaceUID(c echo.Context, url string, uid uuid.UUID, next func(echo.Context, uuid.UUID) error) error {
	if c.Request().Header.Get("HX-Request") != "true" {
		return c.Redirect(http.StatusSeeOther, url)
	}

	c.Response().Header().Set("HX-Replace-Url", url)
	return next(c, uid)
}

// /////////////////// Routing Entry ////////////////////

func (s *HandlerSession) routeEntry(c echo.Context, u *auth.UserModel) error {
	if u == nil {
		return s.welcomePage(c)
	}

	if u.Status == auth.StatusUnverified {
		return s.showVerify(c)
	}

	if u.Status == auth.StatusNewUser {
		return s.onboardingPage(c, u.ID)
	}

	return s.dashboardPage(c, u.ID)
}

// ////////////////////// Views ///////////////////////////////

func (s *HandlerSession) welcomePage(c echo.Context) error {
	return view.Welcome(c)
}

func (s *HandlerSession) onboardingPage(c echo.Context, uid uuid.UUID) error {
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

func (s *HandlerSession) dashboardPage(c echo.Context, uid uuid.UUID) error {
	var bible *entities.TrackedBible

	tracker, hasMore, err := s.services.ReadTasksFrom(c.Request().Context(), uid, time.Now().AddDate(0, 0, -2))
	if err != nil {
		log.Err(err)
		//todo: with error
		return s.emptyDashboardPage(c, uid)
	}

	if len(tracker) == 0 {
		return s.emptyDashboardPage(c, uid)

	}

	bible = trackerModelToEntity(tracker, hasMore)

	name := ""
	viewU := entities.NewViewUser(name, true)
	return view.HomeHTML(c, bible, viewU, false)
}

func (s *HandlerSession) emptyDashboardPage(c echo.Context, uid uuid.UUID) error {
	bible := &entities.TrackedBible{
		HasMore:       false,
		TrackedGroups: []*entities.TrackedGroup{},
	}

	name := ""
	viewU := entities.NewViewUser(name, true)
	return view.HomeHTML(c, bible, viewU, false)
}
