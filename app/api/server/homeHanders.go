package server

import (
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
	// chapters, err := s.services.GetPlansChapters(c.Request().Context(), 0)
	// // todo real errors
	// if err != nil {
	// 	log.Err(err).Msg("Issue with getting welcome screen")
	// 	return c.JSON(http.StatusInternalServerError, err) // todo do better
	// }

	// bible := chapterModelToEntity(chapters)

	// name := ""
	viewU := entities.NewViewUser("", true)
	return view.Onboarding(c, viewU)

}

func (s *HandlerSession) dashboardPage(c echo.Context, uid uuid.UUID) error {
	var bible *entities.TrackedBible
	ctx := c.Request().Context()
	tracker, err := s.services.ReadUserTracker(ctx, uid)
	if err != nil {
		log.Err(err).Msg("Dashboard Page: Error")
		//todo: with error
		return s.emptyDashboardPage(c, uid)
	}

	tasks, hasMore, err := s.services.ReadTasksFrom(ctx, uid, time.Now().AddDate(0, 0, -2))
	if err != nil {
		log.Err(err).Msg("Dashboard Page: Error")
		//todo: with error
		return s.emptyDashboardPage(c, uid)
	}

	if len(tasks) == 0 {
		return s.emptyDashboardPage(c, uid)
	}

	bible = trackerModelToEntity(tasks, hasMore)

	name := ""
	viewU := entities.NewViewUser(name, true)
	return view.HomeHTML(c, bible, viewU, tracker.ID)
}

func (s *HandlerSession) emptyDashboardPage(c echo.Context, uid uuid.UUID) error {
	bible := &entities.TrackedBible{
		HasMore:       false,
		TrackedGroups: []*entities.TrackedGroup{},
	}

	name := ""
	viewU := entities.NewViewUser(name, true)
	return view.HomeHTML(c, bible, viewU, -1)
}
