package entities

import "time"

type ViewUser struct {
	IsLoggedIn bool
	Name       string
}

func NewViewUser(name string, loggedIn bool) *ViewUser {
	return &ViewUser{loggedIn, name}
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
	Id        int64
	Read      bool
	Title     string // BookName + Chapter + Verses (opt)
	ChapterId int16
}

func NewTrackedItem(id int64, read bool, title string, chapterId int16) *TrackedItem {
	return &TrackedItem{id, read, title, chapterId}
}
