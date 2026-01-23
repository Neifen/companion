package tracking

import (
	"context"
	"fmt"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/pkg/errors"
)

const (
	tasksTable    = "tracking.tasks"
	trackersTable = "tracking.trackers"

	biblePlansTable = "plans.bible_plans"
	plansTable      = "plans.plans"

	chaptersTable = "static.chapters"
)

func (pg *TrackingStore) CheckTask(ctx context.Context, taskID int64, checked bool) error {
	exec, err := pg.db.Exec(ctx, `update `+tasksTable+` set read = $1, updated_at = $2 where id= $3`, checked, time.Now(), taskID)
	if err != nil {
		return errors.Wrapf(err, `error updating task %d`, taskID)
	}

	aff := exec.RowsAffected()
	if aff != 1 {
		fmt.Println("ISSUE WITH CHECKING 1 ROW")
		return errors.Errorf(`task %d not tracked`, taskID)
	}

	return nil
}

func (pg *TrackingStore) ReadTrackerSettingsFromUser(ctx context.Context, userID int) (*TrackerSettings, error) {
	var trackerSettings TrackerSettings

	row := pg.db.QueryRow(ctx, `
		SELECT tr.id, tr.start_date, tr.end_date as last_used  FROM `+trackersTable+` tr where user_fk = $1
	`, userID)

	err := row.Scan(&trackerSettings.ID, &trackerSettings.FromDate, &trackerSettings.ToDate)
	if err != nil {
		return nil, errors.Wrapf(err, `error reading task settings for user %d`, userID)
	}

	return &trackerSettings, nil
}

func (pg *TrackingStore) ReadTasksUntil(ctx context.Context, userID int, toTime time.Time) ([]*TrackerModel, bool, error) {
	const pages = 10

	toDate := toTime.Format("2006-01-02")
	rows, err := pg.db.Query(ctx, `
		WITH prev_dates AS (
			SELECT DISTINCT ta.read_by
			FROM `+tasksTable+` ta
			JOIN `+trackersTable+` tr ON ta.tracker_fk = tr.id 
			 AND tr.user_fk = $1 AND ta.read_by < $2
			GROUP BY ta.read_by
			ORDER BY ta.read_by DESC
			LIMIT $3
		)
		SELECT ta.id, ta.read, ta.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id
		FROM `+tasksTable+` ta
		JOIN `+trackersTable+` tr on tr.id = ta.tracker_fk AND tr.user_fk = $1
		JOIN prev_dates d ON d.read_by = ta.read_by
		join `+biblePlansTable+` pb on ta.bible_plan_fk = pb.id
		join `+chaptersTable+` c on pb.chapter_fk = c.id
		ORDER BY ta.read_by ASC, ta.id ASC;`,
		userID, toDate, pages)
	if err != nil {
		return nil, false, errors.Wrapf(err, "ReadTrackerFromuserID(%d) select", userID)
	}

	return pg.scanTasks(userID, rows, pages)
}

func (pg *TrackingStore) ReadTasksFrom(ctx context.Context, userID int, fromTime time.Time) ([]*TrackerModel, bool, error) {
	const pages = 10

	fromDate := fromTime.Format("2006-01-02")

	rows, err := pg.db.Query(ctx, `
		WITH next_dates AS (
			SELECT DISTINCT ta.read_by
			FROM `+tasksTable+` ta
				JOIN `+trackersTable+` tr ON ta.tracker_fk = tr.id 
			 AND tr.user_fk = $1 AND ta.read_by >= $2
			GROUP BY ta.read_by
			ORDER BY ta.read_by ASC
			LIMIT $3
		)
		SELECT ta.id, ta.read, ta.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id
		FROM `+tasksTable+` ta
		JOIN `+trackersTable+` tr on tr.id = ta.tracker_fk AND tr.user_fk = $1
		JOIN next_dates d ON d.read_by = ta.read_by
		join `+biblePlansTable+` pb on ta.bible_plan_fk = pb.id
		join `+chaptersTable+` c on pb.chapter_fk = c.id
		ORDER BY ta.read_by ASC, ta.id ASC;`,
		userID, fromDate, pages)
	if err != nil {
		return nil, false, errors.Wrapf(err, "ReadTrackerFromuserID(%d) select", userID)
	}

	return pg.scanTasks(userID, rows, pages)
}

func (pg *TrackingStore) scanTasks(userID int, rows pgx.Rows, pages int) ([]*TrackerModel, bool, error) {
	var trackers []*TrackerModel
	var start time.Time
	var end time.Time
	i := 0
	for ; rows.Next(); i++ {
		var id int64
		var read bool
		var readBy time.Time
		var bookID int16
		var bookName string
		var chapterNr int16
		var versesNull string
		var chapterID int16

		err := rows.Scan(&id, &read, &readBy, &bookID, &bookName, &chapterNr, &versesNull, &chapterID)
		if err != nil {
			return nil, false, errors.Wrapf(err, "ReadTrackerFromuserID(%d) scan", userID)
		}

		end = readBy
		if i == 0 {
			start = readBy
		}
		trackers = append(trackers, &TrackerModel{id, read, readBy, bookName, bookID, chapterNr, versesNull, chapterID})
	}

	hasMore := end.Sub(start).Hours() < float64((pages-1)*24)

	return trackers, hasMore, nil
}

func (pg *TrackingStore) DeleteTask(ctx context.Context, trackerID int64) error {
	// delete cascate deletes task items
	_, err := pg.db.Exec(ctx, `DELETE FROM `+trackersTable+` where id = $1`, trackerID)
	if err != nil {
		return errors.Wrapf(err, "DeleteTracker(trackerId: %d) ", trackerID)
	}

	return nil
}

func (pg *TrackingStore) CreateTask(ctx context.Context, userID, planID int, startRaw, endRaw string) error {
	start, err := time.Parse("2006-01-02", startRaw)
	if err != nil {
		return errors.Wrapf(err, "createTracker(%d) could not transform start to date", userID)
	}

	end, err := time.Parse("2006-01-02", endRaw)
	if err != nil {
		return errors.Wrapf(err, "createTracker(%d) could not transform end to date", userID)
	}

	if i := end.Compare(start); i <= 0 {
		return fmt.Errorf("CreateTracker(%d): start: %s needs to be before end: %s", userID, startRaw, endRaw)
	}

	tx, err := pg.db.Begin(ctx)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, start: %s, end: %s) ", userID, startRaw, endRaw)
	}
	defer tx.Rollback(ctx)

	_, err = tx.Exec(ctx, `DELETE FROM `+trackersTable+` WHERE user_fk = $1`, userID)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, start: %s, end: %s) could not delete trackers Table", userID, startRaw, endRaw)
	}

	var utID int64
	err = tx.QueryRow(ctx, `
	INSERT INTO `+trackersTable+` (user_fk, start_date, end_date)
	VALUES ($1, $2, $3)
	RETURNING id`, userID, start, end).Scan(&utID)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, planID: %d, start: %s, end: %s) ", userID, planID, startRaw, endRaw)
	}

	res, err := tx.Exec(ctx, `
		insert into `+tasksTable+` (tracker_fk, bible_plan_fk, read_by) 
		select $1 as tracker_fk, pb.id as bible_plan_fk, 
		       to_date($3, 'YYYY-MM-DD') + interval '1' day * (
		           -1 + ceil(
		                (to_date($4, 'YYYY-MM-DD') - to_date($3, 'YYYY-MM-DD'))::float
		                * pb.running_length /
		                pl.length
		           )
		       ) as read_by
		       from `+biblePlansTable+` pb
			   join `+plansTable+` pl on pl.id = pb.plan_fk
				where pb.plan_fk = $2
	`, utID, planID, startRaw, endRaw)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, planID: %d, start: %s, end: %s) ", userID, planID, startRaw, endRaw)
	}

	rows := res.RowsAffected()
	if rows < 1 {
		return fmt.Errorf("CreateTracker(%d): start: %s end: %s, could not insert any task rows", userID, startRaw, endRaw)
	}

	err = tx.Commit(ctx)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, planID: %d, start: %s, end: %s) ", userID, planID, startRaw, endRaw)
	}

	return nil
}

func (pg *TrackingStore) MoveTaskDays(ctx context.Context, userID int, days int) error {
	// todo maybe in two queries:
	// one two check end date and one to edit
	// check: because if end date is behind today
	tx, err := pg.db.Begin(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userID: %d, days: %d) ", userID, days)
	}
	defer tx.Rollback(ctx)

	_, err = tx.Exec(ctx, `
		update `+tasksTable+` ta
		set read_by = read_by + interval '1' day * $2
		from `+trackersTable+` tr
		where tr.user_fk = $1 and ta.tracker_fk = tr.id AND not ta.read 
	`, userID, days)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userID: %d, days: %d) ", userID, days)
	}

	// todo check if whole fStart works
	_, err = tx.Exec(ctx, `
		update `+trackersTable+` 
		set start_date = start_date + interval '1' day * $2,
			end_date = end_date + interval '1' day * $2
		where user_fk = $1
	`, userID, days)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userID: %d, days: %d) ", userID, days)
	}

	err = tx.Commit(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDates(userID: %d, days: %d) ", userID, days)
	}

	return nil
}

func (pg *TrackingStore) MoveTaskStartDate(ctx context.Context, userID int, start string) error {
	// todo maybe in two queries:
	// one two check end date and one to edit
	// check: because if end date is behind today

	tx, err := pg.db.Begin(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userID: %d, start: %v) ", userID, start)
	}
	defer tx.Rollback(ctx)

	_, err = tx.Exec(ctx, `
	with filtered as(
		select
			ta.id, 
			ta.read_by , 
			pb.length, 
			(sum(pb.length) over (order by ta.read_by, ta.id)) as running_length,
			tr.start_date,
			tr.end_date
		from  `+tasksTable+` ta
		    join `+trackersTable+` tr on tr.id = ta.tracker_fk and tr.user_fk = $1 AND not ta.read
			join `+biblePlansTable+` pb on ta.bible_plan_fk = pb.id
			order by ta.read_by, ta.id
	)
	update `+tasksTable+` ta
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
`, userID, start)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userID: %d, start: %s) ", userID, start)
	}

	// todo check if whole fStart works
	_, err = tx.Exec(ctx, `
		update `+trackersTable+` set start_date = $2 
		where user_fk = $1
	`, userID, start)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userID: %d, start: %v) ", userID, start)
	}

	err = tx.Commit(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartDate(userID: %d, start: %v) ", userID, start)
	}
	return nil
}

func (pg *TrackingStore) MoveTaskEndDate(ctx context.Context, userID int, end string) error {
	// todo maybe in two queries:
	// one two check end date and one to edit
	// check: because if end date is behind today
	tx, err := pg.db.Begin(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userID: %d, end: %s) ", userID, end)
	}
	defer tx.Rollback(ctx)

	_, err = tx.Exec(ctx, `
	with filtered as(
		select
			ta.id, 
			ta.read_by , 
			pb.length, 
			(sum(pb.length) over (order by ta.read_by, ta.id)) as running_length,
			tr.start_date,
			tr.end_date
		from  `+tasksTable+` ta
		    join `+trackersTable+` tr on tr.id = ta.tracker_fk and tr.user_fk = $1 AND not ta.read
			join `+biblePlansTable+` pb on ta.bible_plan_fk = pb.id
		order by ta.read_by, ta.id
	)
	update `+tasksTable+` ta
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
`, userID, end)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userID: %d, end: %s) ", userID, end)
	}

	// todo check if whole fStart works
	_, err = tx.Exec(ctx, `
		update `+trackersTable+` set end_date = $2 
		where user_fk = $1
	`, userID, end)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userID: %d, end %v) ", userID, end)
	}

	err = tx.Commit(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerEndDate(userID: %d, end %v) ", userID, end)
	}
	return nil
}

func (pg *TrackingStore) MoveTaskDates(ctx context.Context, userID int, start, end string) error {
	tx, err := pg.db.Begin(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userID: %d, start: %v, end %v) ", userID, start, end)
	}
	defer tx.Rollback(ctx)

	_, err = tx.Exec(ctx, `
	with filtered as(
		select
			ta.id, 
			ta.read_by , 
			pb.length, 
			(sum(pb.length) over (order by ta.read_by, ta.id)) as running_length,
			tr.start_date,
			tr.end_date
		from  `+tasksTable+` ta
		    join `+trackersTable+` tr on tr.id = ta.tracker_fk and tr.user_fk = $1 AND not ta.read
			join `+biblePlansTable+` pb on ta.bible_plan_fk = pb.id
		order by ta.read_by, ta.id
	)
	update `+tasksTable+` ta
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
`, userID, start, end)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userID: %d, start: %v, end %v) ", userID, start, end)
	}

	_, err = tx.Exec(ctx, `
		update `+trackersTable+` set start_date = $1, end_date = $2 
		where user_fk = $3
	`, start, end, userID)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userID: %d, start: %v, end %v) ", userID, start, end)
	}

	err = tx.Commit(ctx)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerStartEndDate(userID: %d, start: %v, end %v) ", userID, start, end)
	}

	return nil
}

func (pg *TrackingStore) ReadLastUncheckedTask(ctx context.Context, userID int) (int64, error) {
	var taskID int64
	row := pg.db.QueryRow(ctx, "select min(ta.id) from "+tasksTable+" ta where ta.id = $1 and not ta.read", userID)
	err := row.Scan(&taskID)
	if err != nil {
		return -1, err
	}

	return taskID, nil
}
