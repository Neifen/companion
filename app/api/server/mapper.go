package server

import (
	"fmt"
	"github.com/neifen/htmx-login/app/api/storage"
	"github.com/neifen/htmx-login/app/entities"
	"time"
)

func chapterModelToEntity(model []*storage.ChapterModel) *entities.TrackedBible {
	trackedBible := entities.NewTrackedBible(false)
	var trackedItems []*entities.TrackedItem
	lastBookName := ""
	for _, chapter := range model {
		if chapter.BookName != lastBookName {
			if trackedItems != nil && len(trackedItems) != 0 {
				book := entities.NewTrackedGroup(lastBookName, lastBookName, trackedItems)
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

func trackerModelToEntity(model []*storage.TrackerModel, hasMore bool) *entities.TrackedBible {
	trackedBible := entities.NewTrackedBible(hasMore)

	today := time.Now().Format("January 2, 2006")
	lastDate := time.Time{}

	for _, row := range model {
		// Chapter + Verse if there
		chapter := fmt.Sprintf("%s %d", row.BookName, row.ChapterNr)
		if len(row.Verses) != 0 {
			chapter = fmt.Sprintf("%s:%s", chapter, row.Verses)
		}
		trackedItem := entities.NewTrackedItem(row.ID, row.Read, chapter, row.ChapterId)
		if lastDate != row.ReadBy {
			lastDate = row.ReadBy
			day := row.ReadBy.Format("January 2, 2006")
			pagination := day
			if day == today {
				day = "Today"
			}

			trackedDay := entities.NewTrackedGroup(day, pagination, []*entities.TrackedItem{})
			trackedBible.TrackedGroups = append(trackedBible.TrackedGroups, trackedDay)
		}

		group := trackedBible.TrackedGroups[len(trackedBible.TrackedGroups)-1]
		group.TrackedItems = append(group.TrackedItems, trackedItem)
	}

	return trackedBible
}
