package bible

import (
	"context"

	"github.com/jackc/pgx/v5"
	"github.com/pkg/errors"
)

const (
	plansTable      = "plans.plans"
	biblePlansTable = "plans.bible_plans"
	chaptersTable   = "static.chapters"
)

func (pg *BibleStore) ReadPlanChapter(ctx context.Context, planID int) ([]*ChapterModel, error) {
	rows, err := pg.db.Query(ctx, `
		select c.id, c.book_name, c.book_id, c.chapter_nr, c.chapter_word_count from `+plansTable+` p 
		join `+biblePlansTable+` bp on bp.plan_fk = p.id
		join `+chaptersTable+` c on bp.chapter_fk = c.id
		where p.id = $1
		order by bp.id;
`, planID)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadPlanChapter(%d) select", planID)
	}

	var chapters []*ChapterModel
	for i := 0; rows.Next(); i++ {
		var id int16
		var bookName string
		var bookID int16
		var chapterNr int16
		var chapterWordCount int16

		err := rows.Scan(&id, &bookName, &bookID, &chapterNr, &chapterWordCount)
		if err != nil {
			return nil, errors.Wrapf(err, "ReadChaptersFromPlan(%d) scan", planID)
		}

		chapters = append(chapters, &ChapterModel{id, bookName, bookID, chapterNr, chapterWordCount})
	}

	return chapters, nil
}

func (pg *BibleStore) ReadAllChapters(ctx context.Context) ([]*ChapterModel, error) {
	rows, err := pg.db.Query(ctx, "SELECT id, book_name, book_id, chapter_nr, chapter_word_count FROM "+chaptersTable+" order by id")
	if err != nil {
		return nil, errors.Wrap(err, "ReadAllChapters select")
	}

	chapters := make([]*ChapterModel, 1189) // 1189 chapter in the bible
	for i := 0; rows.Next(); i++ {
		var id int16
		var bookName string
		var bookID int16
		var chapter int16
		var chapterWordCount int16

		err := rows.Scan(&id, &bookName, &bookID, &chapter, &chapterWordCount)
		if err != nil {
			return nil, errors.Wrap(err, "ReadAllChapters scan")
		}

		chapters[i] = &ChapterModel{id, bookName, bookID, chapter, chapterWordCount}
	}

	return chapters, nil
}

func (pg *BibleStore) ReadAllBookChapters(ctx context.Context, book string) ([]ChapterModel, error) {
	rows, err := pg.db.Query(ctx, `
	SELECT 
		id, book_name, book_id, chapter_nr, chapter_word_count 
	FROM `+chaptersTable+` where lower(book_name)=lower($1)
	 order by id `, book)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadAllBookChapters(book: %s) select", book)
	}

	chapters, err := pgx.CollectRows(rows, pgx.RowToStructByName[ChapterModel])
	if err != nil {
		return nil, errors.Wrapf(err, "ReadAllBookChapters(book: %s) scanning", book)
	}

	return chapters, nil
}

func (pg *BibleStore) ReadBookChapters(ctx context.Context, book string, chapterNrs []int16) ([]ChapterModel, error) {
	rows, err := pg.db.Query(ctx, `
	SELECT 
		c.id, c.book_name, c.book_id, c.chapter_nr, c.chapter_word_count
	FROM unnest($1::smallint[]) WITH ORDINALITY AS chapter_nrs(nr, ord) 
		join `+chaptersTable+` c on chapter_nrs.nr=c.chapter_nr and lower(c.book_name)=lower($2)
	 	order by chapter_nrs.ord `, chapterNrs, book)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadAllBookChapters(book: %s) select", book)
	}

	chapters, err := pgx.CollectRows(rows, pgx.RowToStructByName[ChapterModel])
	if err != nil {
		return nil, errors.Wrapf(err, "ReadBookChapters(book: %s, chapterNrs: %v) scanning", book, chapterNrs)
	}

	return chapters, nil
}
