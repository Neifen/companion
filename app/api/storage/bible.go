package storage

import (
	"database/sql"
	"fmt"
	"time"

	"github.com/pkg/errors"

	_ "github.com/lib/pq"
)

type BibleDB interface {
	CheckTracked(trackerId int64, checked bool) error

	CreateTracker(userId, planId int, start, end string) error
	DeleteTracker(trackerId int64) error

	MoveTrackerDates(userId int, days int) error
	MoveTrackerStartDate(userId int, start string) error
	MoveTrackerEndDate(userId int, end string) error
	MoveTrackerStartEndDate(userId int, start, end string) error

	ReadTrackerFromUserIdFrom(userId int, fromDate time.Time) ([]*TrackerModel, bool, error)
	ReadTrackerFromUserIdUntil(userId int, fromDate time.Time) ([]*TrackerModel, bool, error)
	ReadTrackerSettingsFromUser(userid int) (*TrackerSettings, error)

	ReadChaptersFromPlan(planId int) ([]*ChapterModel, error)
	ReadAllChapters() ([]*ChapterModel, error)

	ReadCompanionForVerse(planId int64, chapterId int16) (string, error)

	ReadAllPlans() ([]*PlanModel, error)
}

type PlanModel struct {
	ID       int    `sql:"id"`
	Name     string `sql:"name"`
	PlanDesc string `sql:"plan_desc"`
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
	ID       int64     `sql:"id"`
	FromDate time.Time `sql:"from_date"`
	ToDate   time.Time `sql:"to_date"`
}

func (pg *PostgresStore) CheckTracked(trackerId int64, checked bool) error {
	exec, err := pg.db.Exec(`update public.task set read = $1, updated_at = $2 where id= $3`, checked, time.Now(), trackerId)
	if err != nil {
		return errors.Wrapf(err, `error updating task %d`, trackerId)
	}

	aff, err := exec.RowsAffected()
	if aff != 1 || err != nil {
		fmt.Println("ISSUE WITH CHECKING 1 ROW")
		return errors.Errorf(`task %d not tracked`, trackerId)
	}

	return nil
}

func (pg *PostgresStore) ReadTrackerSettingsFromUser(userid int) (*TrackerSettings, error) {
	var trackerSettings TrackerSettings

	row := pg.db.QueryRow(`
		SELECT tr.id, tr.start_date, tr.end_date  FROM tracker tr where user_fk = $1
	`, userid)

	err := row.Scan(&trackerSettings.ID, &trackerSettings.FromDate, &trackerSettings.ToDate)
	if err != nil {
		return nil, errors.Wrapf(err, `error reading task settings for user %d`, userid)
	}

	return &trackerSettings, nil
}

func (pg *PostgresStore) ReadTrackerFromUserIdUntil(userId int, toTime time.Time) ([]*TrackerModel, bool, error) {
	const pages = 10

	toDate := toTime.Format("2006-01-02")
	rows, err := pg.db.Query(`
		WITH prev_dates AS (
			SELECT DISTINCT ta.read_by
			FROM task ta
			JOIN public.tracker tr ON ta.tracker_fk = tr.id 
			 AND tr.user_fk = $1 AND ta.read_by < $2
			GROUP BY ta.read_by
			ORDER BY ta.read_by DESC
			LIMIT $3
		)
		SELECT ta.id, ta.read, ta.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id
		FROM task ta
		JOIN public.tracker tr on tr.id = ta.tracker_fk AND tr.user_fk = $1
		JOIN prev_dates d ON d.read_by = ta.read_by
		join plans_to_bible pb on ta.plan_to_bible_fk = pb.id
		join static.chapters c on pb.chapter_fk = c.id
		ORDER BY ta.read_by ASC, ta.id ASC;`,
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
			SELECT DISTINCT ta.read_by
			FROM task ta
				JOIN public.tracker tr ON ta.tracker_fk = tr.id 
			 AND tr.user_fk = $1 AND ta.read_by >= $2
			GROUP BY ta.read_by
			ORDER BY ta.read_by ASC
			LIMIT $3
		)
		SELECT ta.id, ta.read, ta.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id
		FROM task ta
		JOIN public.tracker tr on tr.id = ta.tracker_fk AND tr.user_fk = $1
		JOIN next_dates d ON d.read_by = ta.read_by
		join plans_to_bible pb on ta.plan_to_bible_fk = pb.id
		join static.chapters c on pb.chapter_fk = c.id
		ORDER BY ta.read_by ASC, ta.id ASC;`,
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
	if end.Sub(start).Hours() < float64((pages-1)*24) {
		hasMore = false
	}

	return trackers, hasMore, nil
}

func (pg *PostgresStore) DeleteTracker(trackerId int64) error {

	// delete cascate deletes task items
	_, err := pg.db.Exec(`DELETE FROM public.tracker where id = $1`, trackerId)
	if err != nil {
		return errors.Wrapf(err, "DeleteTracker(trackerId: %d) ", trackerId)
	}

	return nil
}

func (pg *PostgresStore) CreateTracker(userId, planId int, startRaw, endRaw string) error {
	start, err := time.Parse("2006-01-02", startRaw)
	if err != nil {
		return errors.Wrapf(err, "createTracker(%d) could not transform start to date", userId)
	}

	end, err := time.Parse("2006-01-02", endRaw)
	if err != nil {
		return errors.Wrapf(err, "createTracker(%d) could not transform end to date", userId)
	}

	if i := end.Compare(start); i <= 0 {
		return fmt.Errorf("CreateTracker(%d): start: %s needs to be before end: %s", userId, startRaw, endRaw)
	}

	tx, err := pg.db.Begin()
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userid: %d, start: %s, end: %s) ", userId, startRaw, endRaw)
	}
	defer tx.Rollback()

	var utId int64
	err = tx.QueryRow(`
	INSERT INTO public.tracker (user_fk, start_date, end_date)
	VALUES ($1, $2, $3)
	RETURNING id`, userId, start, end).Scan(&utId)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) ", userId, planId, startRaw, endRaw)
	}

	res, err := tx.Exec(`
		insert into public.task (tracker_fk, plan_to_bible_fk, read_by) 
		select $1 as tracker_fk, pb.id as plan_to_bible_fk, 
		       to_date($3, 'YYYY-MM-DD') + interval '1' day * (
		           -1 + ceil(
		                (to_date($4, 'YYYY-MM-DD') - to_date($3, 'YYYY-MM-DD'))::float
		                * pb.running_length /
		                pl.length
		           )
		       ) as read_by
		       from public.plans_to_bible pb
			   join public.plans pl on pl.id = pb.plan_fk
				where pb.plan_fk = $2
	`, utId, planId, startRaw, endRaw)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) ", userId, planId, startRaw, endRaw)
	}
	rows, err := res.RowsAffected()
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) rows affected", userId, planId, startRaw, endRaw)
	}

	if rows < 1 {
		return fmt.Errorf("CreateTracker(%d): start: %s end: %s, could not insert any task rows", userId, startRaw, endRaw)
	}

	err = tx.Commit()
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userId: %d, planId: %d, start: %s, end: %s) ", userId, planId, startRaw, endRaw)
	}

	return nil
}

func (pg *PostgresStore) MoveTrackerDates(userId int, days int) error {
	// todo maybe in two queries:
	// one two check end date and one to edit
	// check: because if end date is behind today
	tx, err := pg.db.Begin()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userid: %d, days: %d) ", userId, days)
	}

	_, err = tx.Exec(`
		update public.task ta
		set read_by = read_by + interval '1' day * $2
		from tracker tr
		where tr.user_fk = $1 and ta.tracker_fk = tr.id AND not ta.read 
	`, userId, days)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userid: %d, days: %d) ", userId, days)
	}

	//todo check if whole fStart works
	_, err = tx.Exec(`
		update public.tracker 
		set start_date = start_date + interval '1' day * $2,
			end_date = end_date + interval '1' day * $2
		where user_fk = $1
	`, userId, days)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userid: %d, days: %d) ", userId, days)
	}

	err = tx.Commit()
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
			ta.id, 
			ta.read_by , 
			pb.length, 
			(sum(pb.length) over (order by ta.read_by, ta.id)) as running_length,
			tr.start_date,
			tr.end_date
		from  public.task ta
		    join tracker tr on tr.id = ta.tracker_fk and tr.user_fk = $1 AND not ta.read
			join public.plans_to_bible pb on ta.plan_to_bible_fk = pb.id
			order by ta.read_by, ta.id
	)
	update public.task ta
	set read_by = to_date($2, 'YYYY-MM-DD') +
	                  interval '1' day * (
						-1 + ceil(
							(f.end_date - to_date($2, 'YYYY-MM-DD'))::float
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )
	from filtered f
	where f.id = ta.id
`, userId, start)

	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userid: %d, start: %s) ", userId, start)
	}

	//todo check if whole fStart works
	_, err = tx.Exec(`
		update public.tracker set start_date = $2 
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
			ta.id, 
			ta.read_by , 
			pb.length, 
			(sum(pb.length) over (order by ta.read_by, ta.id)) as running_length,
			tr.start_date,
			tr.end_date
		from  public.task ta
		    join tracker tr on tr.id = ta.tracker_fk and tr.user_fk = $1 AND not ta.read
			join public.plans_to_bible pb on ta.plan_to_bible_fk = pb.id
		order by ta.read_by, ta.id
	)
	update public.task ta
	set read_by = f.start_date +
	                  interval '1' day * (
						-1 + ceil(
							(to_date($2, 'YYYY-MM-DD') - f.start_date)::float
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )
	from filtered f
	where f.id = ta.id
`, userId, end)

	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userid: %d, end: %s) ", userId, end)
	}

	//todo check if whole fStart works
	_, err = tx.Exec(`
		update public.tracker set end_date = $2 
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

func (pg *PostgresStore) MoveTrackerStartEndDate(userId int, start, end string) error {
	tx, err := pg.db.Begin()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, start, end)
	}

	_, err = tx.Exec(`
	with filtered as(
		select
			ta.id, 
			ta.read_by , 
			pb.length, 
			(sum(pb.length) over (order by ta.read_by, ta.id)) as running_length,
			tr.start_date,
			tr.end_date
		from  public.task ta
		    join tracker tr on tr.id = ta.tracker_fk and tr.user_fk = $1 AND not ta.read
			join public.plans_to_bible pb on ta.plan_to_bible_fk = pb.id
		order by ta.read_by, ta.id
	)
	update public.task ta
	set read_by = to_date($2, 'YYYY-MM-DD') +
	                  interval '1' day * (
						-1 + ceil(
							(to_date($3, 'YYYY-MM-DD') - to_date($2, 'YYYY-MM-DD'))::float
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )
	from filtered f
	where f.id = ta.id
`, userId, start, end)

	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, start, end)
	}

	_, err = tx.Exec(`
		update public.tracker set start_date = $1, end_date = $2 
		where user_fk = $3
	`, start, end, userId)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, start, end)
	}

	err = tx.Commit()
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userid: %d, start: %v, end %v) ", userId, start, end)
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

func (pg *PostgresStore) ReadCompanionForVerse(planId int64, chapterId int16) (string, error) {
	rows, err := pg.db.Query(`
	    select
			*
		from
			companions.companion_base_to_plans cbtp
		join
		companions.companion_base cb on
			cbtp.plan_fk = :plan_id
			and cb.id = cbtp.companion_base_fk
		join companions.companion c on
			:chapter >= c.chapter_start_fk
			and :chapter <= c.chapter_end_fk
			and cb.id = c.companion_base_fk;
`, planId)

	if err != nil {
		return "", errors.Wrapf(err, "ReadChaptersFromPlan(%d) select", planId)
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
			return "", errors.Wrapf(err, "ReadChaptersFromPlan(%d) scan", planId)
		}

		chapters = append(chapters, &ChapterModel{id, bookName, bookId, chapterNr, chapterWordCount})
	}

	return "chapters", nil
}

func (pg *PostgresStore) ReadAllPlans() ([]*PlanModel, error) {
	var id int
	var name string
	var plan_desc string

	var planModels []*PlanModel
	rows, err := pg.db.Query(`select id, name, plan_desc from public.plans`)
	if err != nil {
		return nil, errors.Wrap(err, "could not read all plans")
	}

	for rows.Next() {
		rows.Scan(&id, &name, &plan_desc)

		planModels = append(planModels, &PlanModel{id, name, plan_desc})
	}

	return planModels, nil

}
