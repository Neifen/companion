package bible

import (
	"github.com/pkg/errors"

	_ "github.com/lib/pq"
)

const (
	plansTable      = "plans.plans"
	biblePlansTable = "plans.bible_plans"
	chaptersTable   = "static.chapters"
)

func (pg *BibleStore) ReadPlanChapter(planID int) ([]*ChapterModel, error) {
	rows, err := pg.db.Query(`
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

func (pg *BibleStore) ReadAllChapters() ([]*ChapterModel, error) {
	rows, err := pg.db.Query("SELECT id, book_name, book_id, chapter_nr, chapter_word_count FROM " + chaptersTable + " order by id")
	if err != nil {
		return nil, errors.Wrap(err, "ReadAllChapters select")
	}

	chapters := make([]*ChapterModel, 1189) //1189 chapter in the bible
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
