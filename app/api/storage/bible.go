package storage

import (
	"github.com/neifen/htmx-login/app/entities"
	"github.com/pkg/errors"

	_ "github.com/lib/pq"
)

type ChapterModel struct {
	ID               int16  `sql:"chapter_id"`
	BookName         string `sql:"book_name"`
	BookId           int16  `sql:"book_id"`
	Chapter          int16  `sql:"chapter"`
	ChapterWordCount int16  `sql:"chapter_word_count"`
}

func ChapterModelToEntity(model []*ChapterModel) *entities.Bible {
	var bible [66]*entities.Book
	lastBookName := ""
	for _, model := range model {
		if model.BookName != lastBookName {
			bible[model.BookId-1] = &entities.Book{Title: model.BookName, Chapters: make([]*entities.Chapter, 0)}
			lastBookName = model.BookName
		}

		bible[model.BookId-1].Chapters = append(bible[model.BookId-1].Chapters, &entities.Chapter{ID: model.ID, Number: model.Chapter, WordCount: model.ChapterWordCount})
	}

	return &entities.Bible{Books: bible}
}

func (pg *PostgresStore) ReadChaptersWithDatedPlan(planId int, days int) ([]*ChapterModel, error) {
	rows, err := pg.db.Query(`
		select c.id, c.book_name, c.book_id, c.chapter_nr, ceil($2.0 * pb.running_length / p.length) as day_from_start from public.plans p 
		join public.plans_to_bible pb on pb.plan_fk = p.id
		join static.chapters c on pb.chapter_fk = c.id
		where p.id = $1
		order by pb.id;
`, planId, days)

	if err != nil {
		return nil, errors.Wrapf(err, "ReadChaptersFromPlan(%d) select", planId)
	}

	chapters := make([]*ChapterModel, 1189) //1189 chapter in the bible
	for i := 0; rows.Next(); i++ {
		var id int16
		var bookName string
		var bookId int16
		var chapter int16
		var chapterWordCount int16

		err := rows.Scan(&id, &bookName, &bookId, &chapter, &chapterWordCount)
		if err != nil {
			return nil, errors.Wrapf(err, "ReadChaptersFromPlan(%d) scan", planId)
		}

		chapters[i] = &ChapterModel{id, bookName, bookId, chapter, chapterWordCount}
	}

	return chapters, nil
}

func (pg *PostgresStore) ReadChaptersFromPlan(planId int) ([]*ChapterModel, error) {
	rows, err := pg.db.Query(`
		select c.id, c.book_name, c.book_id, c.chapter_nr, c.chapter_word_count from public.plans p 
		join public.plans_to_bible pb on pb.plan_fk = p.id
		join static.chapters c on pb.chapter_fk = c.id
		where p.id = $1
		order by pb.id;
`, planId)

	if err != nil {
		return nil, errors.Wrapf(err, "ReadChaptersFromPlan(%d) select", planId)
	}

	chapters := make([]*ChapterModel, 1189) //1189 chapter in the bible
	for i := 0; rows.Next(); i++ {
		var id int16
		var bookName string
		var bookId int16
		var chapter int16
		var chapterWordCount int16

		err := rows.Scan(&id, &bookName, &bookId, &chapter, &chapterWordCount)
		if err != nil {
			return nil, errors.Wrapf(err, "ReadChaptersFromPlan(%d) scan", planId)
		}

		chapters[i] = &ChapterModel{id, bookName, bookId, chapter, chapterWordCount}
	}

	return chapters, nil
}

func (pg *PostgresStore) ReadAllChapters() ([]*ChapterModel, error) {
	rows, err := pg.db.Query("SELECT id, book_name, book_id, chapter_nr, chapter_word_count FROM static.chapters order by id")
	if err != nil {
		return nil, errors.Wrap(err, "ReadAllChapters select")
	}

	chapters := make([]*ChapterModel, 1189) //1189 chapter in the bible
	for i := 0; rows.Next(); i++ {
		var id int16
		var bookName string
		var bookId int16
		var chapter int16
		var chapterWordCount int16

		err := rows.Scan(&id, &bookName, &bookId, &chapter, &chapterWordCount)
		if err != nil {
			return nil, errors.Wrap(err, "ReadAllChapters scan")
		}

		chapters[i] = &ChapterModel{id, bookName, bookId, chapter, chapterWordCount}
	}

	return chapters, nil
}
