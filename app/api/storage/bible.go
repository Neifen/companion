package storage

import (
	"database/sql"
	"fmt"
	"github.com/pkg/errors"
	"time"

	_ "github.com/lib/pq"
)

type ChapterModel struct {
	ID               int16  `sql:"chapter_id"`
	BookName         string `sql:"book_name"`
	BookId           int16  `sql:"book_id"`
	ChapterNr        int16  `sql:"chapter_nr"`
	ChapterWordCount int16  `sql:"chapter_word_count"`
}

type TrackerModel struct {
	ID        int64     `sql:"chapter_id"`
	Read      bool      `sql:"read"`
	ReadBy    time.Time `sql:"read_by_"`
	BookName  string    `sql:"book_name"`
	BookId    int16     `sql:"book_id"`
	ChapterNr int16     `sql:"chapter"`
	Verses    string    `sql:"verses"`
	ChapterId int16     `sql:"chapter_id"`
}

func (pg *PostgresStore) CheckTracked(userId int, trackerId int64, checked bool) error {
	exec, err := pg.db.Exec(`update public.tracker set read = $1, updated_at = $2 where id= $3 and user_fk = $4`, checked, time.Now(), trackerId, userId)
	if err != nil {
		return errors.Wrapf(err, `error updating tracker %d`, trackerId)
	}

	aff, err := exec.RowsAffected()
	if aff != 1 || err != nil {
		fmt.Println("ISSUE WITH CHECKING 1 ROW")
		return errors.Errorf(`tracker %d not tracked`, trackerId)
	}

	return nil
}

func (pg *PostgresStore) ReadTrackerFromUserIdUntil(userId int, fromTime time.Time) ([]*TrackerModel, bool, error) {
	const pages = 10

	fromDate := fromTime.AddDate(0, 0, -pages).Format("2006-01-02")
	toDate := fromTime.Format("2006-01-02")

	return pg.readTrackerPaginate(userId, fromDate, toDate, pages)
}

func (pg *PostgresStore) ReadTrackerFromUserIdFrom(userId int, fromTime time.Time) ([]*TrackerModel, bool, error) {
	const pages = 10

	fromDate := fromTime.Format("2006-01-02")
	toDate := fromTime.AddDate(0, 0, pages).Format("2006-01-02")

	return pg.readTrackerPaginate(userId, fromDate, toDate, pages)
}

func (pg *PostgresStore) readTrackerPaginate(userId int, fromDate, toDate string, pages int) ([]*TrackerModel, bool, error) {
	rows, err := pg.db.Query(`
	select t.id, t.read, t.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id from public.tracker t 
		join plans_to_bible pb on t.plan_to_bible_fk = pb.id
		join static.chapters c on pb.chapter_fk = c.id
		where t.user_fk = $1 and t.read_by >= $2 and t.read_by <= $3
		order by t.id
`, userId, fromDate, toDate)

	if err != nil {
		return nil, false, errors.Wrapf(err, "ReadTrackerFromUserId(%d) select", userId)
	}

	var trackers []*TrackerModel
	var start time.Time
	var end time.Time
	i := 0
	for ; rows.Next(); i++ {
		var id int64
		var read bool
		var readBy time.Time
		var bookId int16
		var bookName string
		var chapterNr int16
		var versesNull sql.NullString
		var chapterId int16

		err := rows.Scan(&id, &read, &readBy, &bookId, &bookName, &chapterNr, &versesNull, &chapterId)
		if err != nil {
			return nil, false, errors.Wrapf(err, "ReadTrackerFromUserId(%d) scan", userId)
		}

		end = readBy
		if i == 0 {
			start = readBy
		}
		trackers = append(trackers, &TrackerModel{id, read, readBy, bookName, bookId, chapterNr, versesNull.String, chapterId})
	}

	hasMore := false
	fmt.Printf("end: %v, start: %v, sub: %v\n", end, start, end.Sub(start))
	if end.Sub(start).Hours() >= float64(pages*24) {
		hasMore = true
	}

	return trackers, hasMore, nil
}

func (pg *PostgresStore) ReadTrackerFromUserId(userId int) ([]*TrackerModel, error) {
	rows, err := pg.db.Query(`
	select t.id, t.read, t.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id from public.tracker t 
		join plans_to_bible pb on t.plan_to_bible_fk = pb.id
		join static.chapters c on pb.chapter_fk = c.id
		where t.user_fk = $1 and t.read_by > $2 and t.read_by < $3
		order by t.id
`, userId, time.Now().AddDate(0, 0, -1), time.Now().AddDate(0, 0, 10))

	if err != nil {
		return nil, errors.Wrapf(err, "ReadTrackerFromUserId(%d) select", userId)
	}

	var trackers []*TrackerModel
	for i := 0; rows.Next(); i++ {
		var id int64
		var read bool
		var readBy time.Time
		var bookId int16
		var bookName string
		var chapterNr int16
		var versesNull sql.NullString
		var chapterId int16

		err := rows.Scan(&id, &read, &readBy, &bookId, &bookName, &chapterNr, &versesNull, &chapterId)
		if err != nil {
			return nil, errors.Wrapf(err, "ReadTrackerFromUserId(%d) scan", userId)
		}

		trackers = append(trackers, &TrackerModel{id, read, readBy, bookName, bookId, chapterNr, versesNull.String, chapterId})
	}

	return trackers, nil
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

	var chapters []*ChapterModel
	for i := 0; rows.Next(); i++ {
		var id int16
		var bookName string
		var bookId int16
		var chapterNr int16
		var chapterWordCount int16

		err := rows.Scan(&id, &bookName, &bookId, &chapterNr, &chapterWordCount)
		if err != nil {
			return nil, errors.Wrapf(err, "ReadChaptersFromPlan(%d) scan", planId)
		}

		chapters = append(chapters, &ChapterModel{id, bookName, bookId, chapterNr, chapterWordCount})
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
