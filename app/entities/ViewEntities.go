// Package entities
package entities

import (
	"time"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/api/storage/auth"
)

type ViewUser struct {
	UID        uuid.UUID
	IsLoggedIn bool
	Name       string
	Email      string
}

func ViewUserFromModel(u *auth.UserModel) *ViewUser {
	return &ViewUser{u.ID, true, u.Name, u.Email}
}

func NewViewUser(uid uuid.UUID, name string, loggedIn bool) *ViewUser {
	return &ViewUser{uid, loggedIn, name, ""}
}

type ViewSettings struct {
	From time.Time
	To   time.Time
}

func NewViewSettings(from, to time.Time) *ViewSettings {
	return &ViewSettings{
		From: from,
		To:   to,
	}
}
func (v *ViewSettings) ToShort() string {
	return v.To.Format("2006-01-02")
}

func (v *ViewSettings) FromShort() string {
	return v.From.Format("2006-01-02")
}

func (v *ViewSettings) ToString() string {
	return v.To.Format("January 02, 2006")
}

func (v *ViewSettings) FromString() string {
	return v.From.Format("January 02, 2006")
}

type TrackedBible struct {
	TrackedGroups []*TrackedGroup
	HasMore       bool
}

func NewTrackedBible(hasMore bool) *TrackedBible {
	return &TrackedBible{[]*TrackedGroup{}, hasMore}
}

type TrackedGroup struct {
	Title        string
	Pagination   string
	TrackedItems []*TrackedItem
}

func NewTrackedGroup(title, pagination string, items []*TrackedItem) *TrackedGroup {
	return &TrackedGroup{title, pagination, items}
}

type TrackedItem struct {
	ID        int64
	Read      bool
	Title     string // BookName + Chapter + Verses (opt)
	ChapterID int16
}

func NewTrackedItem(id int64, read bool, title string, chapterID int16) *TrackedItem {
	return &TrackedItem{id, read, title, chapterID}
}

type Plan struct {
	ID   int
	Name string
	Desc string
}

func NewPlan(id int, name, desc string) *Plan {
	return &Plan{id, name, desc}
}
