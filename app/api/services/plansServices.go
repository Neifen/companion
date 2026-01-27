package services

import (
	"context"
	"fmt"
	"strconv"
	"strings"

	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/neifen/htmx-login/app/api/storage/plans"
	"github.com/pkg/errors"
)

func (s *Services) GetAllPlans(ctx context.Context) ([]plans.PlanModel, error) {
	return s.store.Plans.ReadAllPlans(ctx)
}

func (s *Services) CreateNewPlan(ctx context.Context, name, desc string, books []string, cutRatio int8) error {
	allChapterModels := []bible.ChapterModel{}

	for i, book := range books {
		split := strings.Split(book, ":")
		if len(split) == 1 {
			chapterModels, err := s.store.Bible.ReadAllBookChapters(ctx, book)
			if err != nil {
				return errors.Wrap(err, "service: Create New Plan")
			}

			if len(chapterModels) < 1 {
				return errors.Errorf("Could not find IDs for: %s", book)
			}

			allChapterModels = append(allChapterModels, chapterModels...)
		} else if len(split) == 2 {
			book = split[0]
			chaptersRaw := split[1]
			chapters := strings.Split(chaptersRaw, ",")
			chapterNrs := []int16{}

			for _, chapter := range chapters {
				chapter = strings.TrimSpace(chapter)
				chapterRange := strings.Split(chapter, "-")
				if len(chapterRange) == 1 {
					nr, err := strconv.Atoi(chapter)
					if err != nil {
						return errors.Wrapf(err, "chapter nr not a number: %v ", nr)
					}

					chapterNrs = append(chapterNrs, int16(nr))
				} else if len(chapterRange) == 2 {
					from := strings.TrimSpace(chapterRange[0])
					nrFrom, err := strconv.Atoi(from)
					if err != nil {
						return errors.Wrapf(err, "chapter nr from not a number: %v ", from)
					}

					to := strings.TrimSpace(chapterRange[1])
					nrTo, err := strconv.Atoi(to)
					if err != nil {
						return errors.Wrapf(err, "chapter nr to not a number: %v ", to)
					}

					for i := nrFrom; i <= nrTo; i++ {
						chapterNrs = append(chapterNrs, int16(i))
					}

				} else {
					return errors.Errorf("service: Create New Plan illegal chapter range: %s", chapter)
				}
			}
			chapterModels, err := s.store.Bible.ReadBookChapters(ctx, book, chapterNrs)
			if err != nil {
				return errors.Wrapf(err, "service: Create New Plan. Could not read BookChapters: (book: %s, chapterNrs: %v) ", book, chapterNrs)
			}

			if len(chapterModels) < 1 {
				return errors.Errorf("Could not find IDs for: %s", book)
			}

			allChapterModels = append(allChapterModels, chapterModels...)

		} else {
			return errors.Errorf("service: Create New Plan illegal book name (id %d): %s", i, book)
		}
	}

	fmt.Printf("resulting chapters: %v \n", allChapterModels)

	includeVerses := cutRatio > 0 //todo: this should come out from the verse parser
	planID, err := s.store.Plans.CreateNewPlan(ctx, name, desc, includeVerses)
	if err != nil {
		return errors.Wrapf(err, "service: Create New Plan. could not create new Plan")
	}

	err = s.store.Plans.CreateNewBiblePlan(ctx, planID, allChapterModels)
	if err != nil {
		return errors.Wrapf(err, "service: Create New Plan. could not create new BiblePlan")
	}

	return nil
}
