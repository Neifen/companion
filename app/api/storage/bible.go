package storage

import (
	"database/sql"
	"fmt"
	"github.com/pkg/errors"
	"time"

	_ "github.com/lib/pq"
)

type BibleDB interface {
	CheckTracked(trackerId int64, checked bool) error

	CreateTracker(userId, planId int, start, end time.Time) error

	MoveTrackerDates(userId int, days int) error
	MoveTrackerStartDate(userId int, start string) error
	MoveTrackerEndDate(userId int, end string) error
	MoveTrackerStartEndDate(userId int, start, end time.Time) error

	ReadTrackerFromUserIdFrom(userId int, fromDate time.Time) ([]*TrackerModel, bool, error)
	ReadTrackerFromUserIdUntil(userId int, fromDate time.Time) ([]*TrackerModel, bool, error)
	ReadTrackerSettingsFromUser(userid int) (*TrackerSettings, error)

	ReadChaptersFromPlan(planId int) ([]*ChapterModel, error)
	ReadAllChapters() ([]*ChapterModel, error)
}
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

type TrackerSettings struct {
	ID       int64     `sql:"chapter_id"`
	FromDate time.Time `sql:"from_date"`
	ToDate   time.Time `sql:"to_date"`
}

func (pg *PostgresStore) CheckTracked(trackerId int64, checked bool) error {
	exec, err := pg.db.Exec(`update public.tracker set read = $1, updated_at = $2 where id= $3`, checked, time.Now(), trackerId)
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

func (pg *PostgresStore) ReadTrackerSettingsFromUser(userid int) (*TrackerSettings, error) {
	var trackerSettings TrackerSettings

	row := pg.db.QueryRow(`
		SELECT utt.id, utt.start_date, utt.end_date  FROM user_to_tracker utt where user_fk = $1
	`, userid)

	err := row.Scan(&trackerSettings.ID, &trackerSettings.FromDate, &trackerSettings.ToDate)
	if err != nil {
		return nil, errors.Wrapf(err, `error reading tracker settings for user %d`, userid)
	}

	return &trackerSettings, nil
}

func (pg *PostgresStore) ReadTrackerFromUserIdUntil(userId int, toTime time.Time) ([]*TrackerModel, bool, error) {
	const pages = 10

	toDate := toTime.Format("2006-01-02")
	rows, err := pg.db.Query(`
		WITH prev_dates AS (
			SELECT DISTINCT t.read_by2
			FROM tracker t
			JOIN public.user_to_tracker ut ON t.user_to_tracker_fk = ut.id 
			 AND ut.user_fk = $1 AND t.read_by2 < $2
			GROUP BY t.read_by2
			ORDER BY t.read_by2 DESC
			LIMIT $3
		)
		SELECT t.id, t.read, t.read_by2, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id
		FROM tracker t
		JOIN public.user_to_tracker ut on ut.id = t.user_to_tracker_fk AND ut.user_fk = $1
		JOIN prev_dates d ON d.read_by2 = t.read_by2
		join plans_to_bible pb on t.plan_to_bible_fk = pb.id
		join static.chapters c on pb.chapter_fk = c.id
		ORDER BY t.read_by2 ASC, t.id ASC;`,
		userId, toDate, pages)

	if err != nil {
		return nil, false, errors.Wrapf(err, "ReadTrackerFromUserId(%d) select", userId)
	}

	return pg.readTracker(userId, rows, pages)
}

func (pg *PostgresStore) ReadTrackerFromUserIdFrom(userId int, fromTime time.Time) ([]*TrackerModel, bool, error) {
	const pages = 10

	fromDate := fromTime.Format("2006-01-02")

	rows, err := pg.db.Query(`
		WITH next_dates AS (
			SELECT DISTINCT t.read_by2
			FROM tracker t
				JOIN public.user_to_tracker ut ON t.user_to_tracker_fk = ut.id 
			 AND ut.user_fk = $1 AND t.read_by2 >= $2
			GROUP BY t.read_by2
			ORDER BY t.read_by2 ASC
			LIMIT $3
		)
		SELECT t.id, t.read, t.read_by2, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id
		FROM tracker t
		JOIN public.user_to_tracker ut on ut.id = t.user_to_tracker_fk AND ut.user_fk = $1
		JOIN next_dates d ON d.read_by2 = t.read_by2
		join plans_to_bible pb on t.plan_to_bible_fk = pb.id
		join static.chapters c on pb.chapter_fk = c.id
		ORDER BY t.read_by2 ASC, t.id ASC;`,
		userId, fromDate, pages)
	if err != nil {
		return nil, false, errors.Wrapf(err, "ReadTrackerFromUserId(%d) select", userId)
	}

	return pg.readTracker(userId, rows, pages)
}

func (pg *PostgresStore) readTracker(userId int, rows *sql.Rows, pages int) ([]*TrackerModel, bool, error) {
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

	hasMore := true
	fmt.Printf("end: %v, start: %v, sub: %v\n", end, start, end.Sub(start)/7)
	if end.Sub(start).Hours() < float64((pages-1)*24) {
		hasMore = false
	}

	return trackers, hasMore, nil
}
func (pg *PostgresStore) CreateTracker(userId, planId int, start, end time.Time) error {
	fStart := start.Format("2006-01-02")
	fEnd := end.Format("2006-01-02")

	if i := end.Compare(start); i <= 0 {
		return fmt.Errorf("CreateTracker(%d): start: %s needs to be before end: %s", userId, fStart, fEnd)
	}

	tx, err := pg.db.Begin()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userid: %d, start: %v) ", userId, fStart)
	}

	res, err := tx.Exec(`
	INSERT INTO public.user_to_tracker (user_fk, start_date, end_date)
	VALUES ($1, $2, $3)`, userId, start, end)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) ", userId, planId, fStart, fEnd)
	}

	utId, err := res.LastInsertId()
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) ", userId, planId, fStart, fEnd)
	}
	_, err = tx.Exec(`
		insert into public.tracker (user_to_tracker_fk, plan_to_bible_fk, read_by, read_by2) 
		select $1 as user_fk, pb.id as plan_to_bible_fk, 
		       to_date($3, 'YYYY-MM-DD') + interval '1' day * (
		           -1 + ceil(
		                (to_date($4, 'YYYY-MM-DD') - to_date($3, 'YYYY-MM-DD') + 0.0)
		                * pb.running_length /
		                pb.length
		           )
		       )
		       from plans_to_bible pb
				where pb.id = $2
	`, utId, planId, fStart, fEnd)

	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) ", userId, planId, fStart, fEnd)
	}

	err = tx.Commit()
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) ", userId, planId, fStart, fEnd)
	}

	return nil
}

func (pg *PostgresStore) MoveTrackerDates(userId int, days int) error {
	// todo maybe in two queries:
	// one two check end date and one to edit
	// check: because if end date is behind today

	_, err := pg.db.Exec(`
		update public.tracker t
		set read_by2 = read_by2 + interval '1' day * $2
		from user_to_tracker ut
		where ut.user_fk = $1 and t.user_to_tracker_fk = ut.id
	`, userId, days)

	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userid: %d, days: %d) ", userId, days)
	}

	return nil
}

func (pg *PostgresStore) MoveTrackerStartDate(userId int, start string) error {
	// todo maybe in two queries:
	// one two check end date and one to edit
	// check: because if end date is behind today

	tx, err := pg.db.Begin()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userid: %d, start: %v) ", userId, start)
	}

	_, err = tx.Exec(`
	with filtered as(
		select
			t.id, 
			t.read_by2 , 
			pb.length, 
			(sum(pb.length) over (order by t.read_by2, t.id)) as running_length,
			ut.start_date,
			ut.end_date
		from  public.tracker t
		    join user_to_tracker ut on ut.id = t.user_to_tracker_fk and ut.user_fk = $1 AND not t.read
			join public.plans_to_bible pb on t.plan_to_bible_fk = pb.id
			order by t.read_by2, t.id
	)
	update public.tracker t
	set read_by2 = to_date($2, 'YYYY-MM-DD') +
	                  interval '1' day * (
						-1 + ceil(
							(f.end_date - to_date($2, 'YYYY-MM-DD')+0.0)
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )
	from filtered f
	where f.id = t.id
`, userId, start)

	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userid: %d, start: %s) ", userId, start)
	}

	//todo check if whole fStart works
	_, err = tx.Exec(`
		update public.user_to_tracker set start_date = $2 
		where user_fk = $1
	`, userId, start)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userid: %d, start: %v) ", userId, start)
	}

	err = tx.Commit()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userid: %d, start: %v) ", userId, start)
	}
	return nil

}

func (pg *PostgresStore) MoveTrackerEndDate(userId int, end string) error {
	// todo maybe in two queries:
	// one two check end date and one to edit
	// check: because if end date is behind today
	tx, err := pg.db.Begin()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userid: %d, end: %s) ", userId, end)
	}

	_, err = tx.Exec(`
	with filtered as(
		select
			t.id, 
			t.read_by2 , 
			pb.length, 
			(sum(pb.length) over (order by t.read_by2, t.id)) as running_length,
			ut.start_date,
			ut.end_date
		from  public.tracker t
		    join user_to_tracker ut on ut.id = t.user_to_tracker_fk and ut.user_fk = $1 AND not t.read
			join public.plans_to_bible pb on t.plan_to_bible_fk = pb.id
		order by t.read_by2, t.id
	)
	update public.tracker t
	set read_by2 = f.start_date +
	                  interval '1' day * (
						-1 + ceil(
							(to_date($2, 'YYYY-MM-DD')+0.0 - f.start_date)
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )
	from filtered f
	where f.id = t.id
`, userId, end)

	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userid: %d, end: %s) ", userId, end)
	}

	//todo check if whole fStart works
	_, err = tx.Exec(`
		update public.user_to_tracker set end_date = $2 
		where user_fk = $1
	`, userId, end)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userid: %d, end %v) ", userId, end)
	}

	err = tx.Commit()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userid: %d, end %v) ", userId, end)
	}
	return nil
}

func (pg *PostgresStore) MoveTrackerStartEndDate(userId int, start, end time.Time) error {
	fStart := start.Format("2006-01-02")
	fEnd := end.Format("2006-01-02")

	if i := end.Compare(start); i <= 0 {
		return fmt.Errorf("MoveTrackerStartEndDate(%d): start: %s needs to be before end: %s", userId, fStart, fEnd)
	}

	tx, err := pg.db.Begin()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, fStart, fEnd)
	}

	_, err = tx.Exec(`
	with filtered as(
		select
			t.id, 
			t.read_by2 , 
			pb.length, 
			(sum(pb.length) over (order by t.read_by2, t.id)) as running_length,
			ut.start_date,
			ut.end_date
		from  public.tracker t
		    join user_to_tracker ut on ut.id = t.user_to_tracker_fk and ut.user_fk = $1 AND not t.read
			join public.plans_to_bible pb on t.plan_to_bible_fk = pb.id
		order by t.read_by2, t.id
	)
	update public.tracker t
	set read_by2 = to_date($2, 'YYYY-MM-DD') +
	                  interval '1' day * (
						-1 + ceil(
							(to_date($3, 'YYYY-MM-DD') - to_date($2, 'YYYY-MM-DD')+0.0)
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )
	from filtered f
	where f.id = t.id
`, userId, fStart, fEnd)

	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, fStart, fEnd)
	}

	//todo check if whole fStart works
	_, err = tx.Exec(`
		update public.user_to_tracker set start_date = $1, end_date = $2 
		where user_fk = $3
	`, fStart, fEnd, userId)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, fStart, fEnd)
	}

	err = tx.Commit()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, fStart, fEnd)
	}

	return nil
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
