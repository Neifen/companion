package server

import (
	"fmt"
	"github.com/neifen/htmx-login/app/api/storage"
	"github.com/neifen/htmx-login/app/entities"
	"time"
)

func chapterModelToEntity(model []*storage.ChapterModel) *entities.TrackedBible {
	trackedBible := entities.NewTrackedBible()
	var trackedItems []*entities.TrackedItem
	lastBookName := ""
	for _, chapter := range model {
		if chapter.BookName != lastBookName {
			if trackedItems != nil && len(trackedItems) != 0 {
				book := entities.NewTrackedGroup(lastBookName, trackedItems)
				trackedBible.TrackedGroups = append(trackedBible.TrackedGroups, book)
				trackedItems = []*entities.TrackedItem{}
			}

			lastBookName = chapter.BookName
		}

		title := fmt.Sprintf("%s %d", chapter.BookName, chapter.ChapterNr)

		// todo change false to use cookies
		item := entities.NewTrackedItem(int64(chapter.ID), false, title, chapter.ID)
		trackedItems = append(trackedItems, item)
	}

	return trackedBible
}

func trackerModelToEntity(model []*storage.TrackerModel) *entities.TrackedBible {
	trackedBible := entities.NewTrackedBible()
	var trackedItems []*entities.TrackedItem
	today := time.Now().Format("January 2, 2006")
	lastDate := time.Time{}
	for _, item := range model {
		if item.ReadBy != lastDate {
			if len(trackedItems) != 0 {
				title := lastDate.Format("January 2, 2006")
				if title == today {
					title = "Today"
				}

				trackedDay := entities.NewTrackedGroup(title, trackedItems)
				trackedBible.TrackedGroups = append(trackedBible.TrackedGroups, trackedDay)
				trackedItems = []*entities.TrackedItem{}
			}

			lastDate = item.ReadBy
		}

		title := fmt.Sprintf("%s %d", item.BookName, item.ChapterNr)
		if len(item.Verses) != 0 {
			title = fmt.Sprintf("%s:%s", title, item.Verses)
		}
		trackedItems = append(trackedItems, entities.NewTrackedItem(item.ID, item.Read, title, item.ChapterId))
	}

	return trackedBible
}
