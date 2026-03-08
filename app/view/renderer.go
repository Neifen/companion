// Package view contains all templ UI code
package view

import (
	"fmt"
	"net/http"

	"github.com/a-h/templ"
	"github.com/labstack/echo/v4"
)

func RenderOnly(c echo.Context, cmp templ.Component) error {
	c.Response().Header().Set(echo.HeaderContentType, echo.MIMETextHTML)
	c.Response().Header().Set("HX-Reswap", "none")
	return cmp.Render(c.Request().Context(), c.Response().Writer)
}

func RenderView(c echo.Context, cmp templ.Component) error {
	c.Response().Header().Set(echo.HeaderContentType, echo.MIMETextHTML)

	if c.Request().Header.Get("HX-Request") != "true" {
		// whole page
		return BuildBase(nil, nil, cmp).Render(c.Request().Context(), c.Response().Writer)
	}

	return cmp.Render(c.Request().Context(), c.Response().Writer)
}

func RenderViews(c echo.Context, cmp ...templ.Component) error {
	c.Response().Header().Set(echo.HeaderContentType, echo.MIMETextHTML)

	var errStack error
	for _, cmp := range cmp {
		err := cmp.Render(c.Request().Context(), c.Response().Writer)
		if err != nil && errStack == nil {
			errStack = err
		} else if err != nil {
			errStack = fmt.Errorf(err.Error(), errStack)
		}
	}
	return errStack
}

func ReplaceURL(path string, c echo.Context, cmp templ.Component) error {
	if c.Request().Header.Get("HX-Request") != "true" {
		// standard redirect
		return c.Redirect(http.StatusSeeOther, path)
	}

	c.Response().Header().Set("HX-Replace-Url", path)
	return RenderView(c, cmp)
}
