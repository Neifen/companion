package companions

import (
	"context"

	"github.com/jackc/pgx/v5"
	"github.com/pkg/errors"
)

const (
	companionsTable      = "companions.companions"
	companionItemsTable  = "companions.companion_items"
	companionImagesTable = "companions.companion_images"
	planCompanionsTable  = "companions.plan_companions"
)

func (pg *CompanionsStore) CreateCompanion(ctx context.Context, companion CompanionModel) (int, error) {
	query := `
		INSERT INTO ` + companionsTable + ` (title, author, companion_type, is_default)
		VALUES (@title, @author, @companion_type, @is_default)
		RETURNING id
	`
	ags := pgx.NamedArgs{
		"title":          companion.Title,
		"author":         companion.Author,
		"companion_type": companion.CompanionType,
		"is_default":     companion.IsDefault,
	}

	row := pg.db.QueryRow(ctx, query, ags)

	var id int
	err := row.Scan(&id)
	if err != nil {
		return -1, errors.Wrapf(err, "companion storage: CreateCompanion with values %v", companion)
	}

	return id, nil
}

func (pg *CompanionsStore) ConnectCompanionToPlan(ctx context.Context, planID, companionID int) error {
	query := `
		INSERT INTO ` + planCompanionsTable + ` (plan_fk, companion_fk)
		VALUES ($1, $2)
	`
	_, err := pg.db.Exec(ctx, query, planID, companionID)
	if err != nil {
		return errors.Wrapf(err, "companion storage: connect plan %d to companion %d", planID, companionID)
	}

	return nil
}

func (pg *CompanionsStore) AddCompanionItem(ctx context.Context, item CompanionItemModel) error {
	query := `
		INSERT INTO ` + companionItemsTable + ` (book_fk, chapter_start_fk, chapter_end_fk, companion_src, markup, companion_fk)
		VALUES (@book, @chapter_start, @chapter_end, @companion_src, @markup, @companion)`

	args := pgx.NamedArgs{
		"book":          item.BookID,
		"chapter_start": item.ChapterStartID,
		"chapter_end":   item.ChapterEndID,
		"companion_src": item.CompanionSource,
		"markup":        item.Markup,
		"companion":     item.CompanionID,
	}

	_, err := pg.db.Exec(ctx, query, args)
	if err != nil {
		//todo: can I print %v but without Markup?
		return errors.Wrapf(err, "companion storage: AddCompanionItem values: %v", item)
	}

	return nil
}

func (pg *CompanionsStore) ReadPlansCompanions(ctx context.Context, planID int) ([]CompanionModel, error) {
	rows, err := pg.db.Query(ctx, `
		select
			c.id,
			c.title,
			c.author,
			c.companion_type,
			c.is_default
		from `+companionsTable+` c
		join `+planCompanionsTable+` pc 
			on pc.plan_fk = $1 
				and pc.companion_fk = c.id 
		order by c.id
	`, planID)
	if err != nil {
		return nil, errors.Wrapf(err, "companion storage: Read all Companions belonging to Plan %d", planID)
	}

	models, err := pgx.CollectRows(rows, pgx.RowToStructByNameLax[CompanionModel])
	if err != nil {
		return nil, errors.Wrapf(err, "companion storage: Read all Companions belonging to Plan %d", planID)
	}

	return models, nil
}

func (pg *CompanionsStore) ReadChaptersCompanion(ctx context.Context, companionID int64, chapterID int16) (*CompanionItemModel, error) {
	rows, err := pg.db.Query(ctx, `
	    select
			ci.id,
			ci.book_fk,
			ci.chapter_start_fk,
			ci.chapter_end_fk,
			ci.companion_src,
			ci.markup,
			ci.companion_fk
		from
			`+companionItemsTable+` ci
		join
		`+companionsTable+` c on
			c.id = $1 and
			(($2 >= ci.chapter_start_fk and $2 <= ci.chapter_end_fk) -- chapter range
				OR (ci.chapter_start_fk IS NULL AND ci.chapter_end_fk IS NULL)) -- or null -> books
			and
			((select book_id from static.chapters where id = $2) = ci.book_fk or ci.book_fk IS NULL) -- book or null -> chapters
			and (ci.book_fk IS NOT NULL or (ci.chapter_end_fk IS NOT NULL AND ci.chapter_start_fk IS NOT NULL)) -- both can not be null
			and c.id = ci.companion_fk
			order by ci.chapter_start_fk is not null desc
			limit 1
`, companionID, chapterID)
	if err != nil {
		return nil, errors.Wrapf(err, "companion storage: ReadChaptersCompanion with companionID %d", companionID)
	}

	companionModel, err := pgx.CollectExactlyOneRow(rows, pgx.RowToStructByName[CompanionItemModel])
	if err != nil {
		return nil, errors.Wrapf(err, "companion storage: ReadChaptersCompanion with companionID %d", companionID)
	}

	return &companionModel, nil
}
