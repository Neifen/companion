package services

import (
	"context"

	"github.com/neifen/htmx-login/app/api/storage/bible"
)

func (s *Services) GetPlansChapters(ctx context.Context, planID int) ([]bible.ChapterModel, error) {
	return s.store.Bible.ReadPlanChapter(ctx, planID)
}
