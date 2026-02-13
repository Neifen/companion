// Package services cointains the business logic for the api
package services

// here comes the renderer markup -> html (maybe put it in view?)
import (
	"context"

	"github.com/gomarkdown/markdown"
	"github.com/gomarkdown/markdown/html"
	"github.com/gomarkdown/markdown/parser"
	"github.com/microcosm-cc/bluemonday"
	"github.com/neifen/htmx-login/app/api/storage/companions"
	"github.com/pkg/errors"
)

func (s *Services) CreateCompanion(ctx context.Context, planID int, companion companions.CompanionModel) (int, error) {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return -1, errors.WithMessage(err, "companion services: Add Companion")
	}

	companionID, err := s.store.Companions.CreateCompanion(ctx, companion)
	if err != nil {
		return -1, errors.WithMessage(err, "companion services: Add Companion")
	}

	err = s.store.Companions.ConnectCompanionToPlan(ctx, planID, companionID)
	if err != nil {
		return -1, errors.WithMessage(err, "companion services: Add Companion")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return -1, errors.WithMessage(err, "companion services: Add Companion")
	}

	return companionID, nil
}

// todo: check markup! for evil things
// todo: test for that

func (s *Services) AddCompanionItem(ctx context.Context, companionID int, item companions.CompanionItemModel) error {

	if item.BookID == nil && (item.ChapterStartID == nil || item.ChapterEndID == nil) {
		return errors.New("Need either a BookID or a range of Chapters")
	}

	if item.BookID != nil && (item.ChapterStartID != nil || item.ChapterEndID != nil) {
		return errors.New("Only BookID or a range of Chapters need to be filled")
	}

	if item.ChapterStartID != nil && item.ChapterEndID == nil || item.ChapterStartID == nil && item.ChapterEndID != nil {
		return errors.New("For a Chapter range we need both Start and End")
	}

	if (item.ChapterStartID != nil) && *item.ChapterEndID < *item.ChapterStartID {
		return errors.Errorf("Chapter needs to Start(%d) before End (%d) ", item.ChapterStartID, item.ChapterEndID)
	}

	item.CompanionID = companionID
	err := s.store.Companions.AddCompanionItem(ctx, item)
	if err != nil {
		return errors.WithMessage(err, "companion services: Add Companion Item")
	}
	return nil
}

func (s *Services) GetAvailableCompanions(ctx context.Context, planID int) ([]companions.CompanionModel, error) {
	companions, err := s.store.Companions.ReadPlansCompanions(ctx, planID)
	if err != nil {
		return nil, errors.WithMessage(err, "companion service: Get Available Companions")
	}

	return companions, nil
}

func (s *Services) GetCompanionPage(ctx context.Context, companionID int64, chapterID int16) (*companions.CompanionItemModel, error) {
	item, err := s.store.Companions.ReadChaptersCompanion(ctx, companionID, chapterID)
	if err != nil {
		return nil, errors.WithMessage(err, "companion service: Get Companion Page")
	}

	// todo here check if 'companions' has html or just markdown
	safe := getHTMLFromMarkdown([]byte(item.Markup))
	item.Markup = string(safe)
	return item, nil
}

func getHTMLFromMarkdown(md []byte) []byte {
	p := parser.New()

	htmlFlags := html.CommonFlags
	opts := html.RendererOptions{Flags: htmlFlags}
	r := html.NewRenderer(opts)

	unsafe := markdown.ToHTML(md, p, r)
	return bluemonday.UGCPolicy().SanitizeBytes(unsafe)
}
