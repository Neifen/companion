package entities

type TrackedBible struct {
	TrackedGroups []*TrackedGroup
	HasMore       bool
}

func NewTrackedBible(hasMore bool) *TrackedBible {
	return &TrackedBible{[]*TrackedGroup{}, hasMore}
}

type TrackedGroup struct {
	Title        string
	TrackedItems []*TrackedItem
}

func NewTrackedGroup(title string, items []*TrackedItem) *TrackedGroup {
	return &TrackedGroup{title, items}
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
