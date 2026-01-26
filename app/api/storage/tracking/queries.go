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

func (pg *TrackingStore) ReadUserTracker(ctx context.Context, userID int) (*TrackerModel, error) {
	var trackerSettings TrackerModel

	row := pg.db.QueryRow(ctx, `
		SELECT tr.id, tr.start_date, tr.end_date as last_used  FROM `+trackersTable+` tr where user_fk = $1
	`, userID)

	err := row.Scan(&trackerSettings.ID, &trackerSettings.StartDate, &trackerSettings.EndDate)
	if err != nil {
		return nil, errors.Wrapf(err, `error reading task settings for user %d`, userID)
	}

	return &trackerSettings, nil
}

func (pg *TrackingStore) ReadTasksUntil(ctx context.Context, userID, pages int, toTime time.Time) ([]TaskModel, error) {
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
		SELECT ta.id as id, ta.read, ta.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id as chapter_id, (select count(*) from prev_dates) as dates_counter
		FROM `+tasksTable+` ta
		JOIN `+trackersTable+` tr on tr.id = ta.tracker_fk AND tr.user_fk = $1
		JOIN prev_dates d ON d.read_by = ta.read_by
		join `+biblePlansTable+` pb on ta.bible_plan_fk = pb.id
		join `+chaptersTable+` c on pb.chapter_fk = c.id
		ORDER BY ta.read_by ASC, ta.id ASC;`,
		userID, toDate, pages)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadTrackerFromuserID(%d) select", userID)
	}

	return pg.scanTasks(userID, rows, pages)
}

func (pg *TrackingStore) ReadTasksFrom(ctx context.Context, userID, pages int, fromTime time.Time) ([]TaskModel, error) {
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
		SELECT ta.id as id, ta.read, ta.read_by, c.book_id,c.book_name, c.chapter_nr, pb.verses, c.id as chapter_id, (select count(*) from next_dates) as dates_counter
		FROM `+tasksTable+` ta
		JOIN `+trackersTable+` tr on tr.id = ta.tracker_fk AND tr.user_fk = $1
		JOIN next_dates d ON d.read_by = ta.read_by
		join `+biblePlansTable+` pb on ta.bible_plan_fk = pb.id
		join `+chaptersTable+` c on pb.chapter_fk = c.id
		ORDER BY ta.read_by ASC, ta.id ASC;`,
		userID, fromDate, pages)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadTrackerFromuserID(%d) select", userID)
	}

	return pg.scanTasks(userID, rows, pages)
}

func (pg *TrackingStore) scanTasks(userID int, rows pgx.Rows, pages int) ([]TaskModel, error) {
	var trackers []TaskModel

	trackers, err := pgx.CollectRows(rows, pgx.RowToStructByName[TaskModel])
	if err != nil {
		return nil, errors.Wrapf(err, "ReadTrackerFromuserID(%d) scan", userID)
	}

	return trackers, nil
}

func (pg *TrackingStore) DeleteUserTracker(ctx context.Context, userID int) error {
	_, err := pg.db.Exec(ctx, `DELETE FROM `+trackersTable+` WHERE user_fk = $1`, userID)
	if err != nil {
		return errors.Wrapf(err, "Could not delete trackers Table for userID %d", userID)
	}

	return nil
}

func (pg *TrackingStore) CreateTracker(ctx context.Context, userID int, start, end string) (int64, error) {
	var utID int64
	err := pg.db.QueryRow(ctx, `
	INSERT INTO `+trackersTable+` (user_fk, start_date, end_date)
	VALUES ($1, $2, $3)
	RETURNING id`, userID, start, end).Scan(&utID)
	if err != nil {
		return -1, errors.Wrapf(err, "Could not create tracker(userID: %d, start: %s, end: %s) ", userID, start, end)
	}

	return utID, nil
}

func (pg *TrackingStore) CreateTasks(ctx context.Context, trackerID int64, planID int, start, end string) error {
	res, err := pg.db.Exec(ctx, `
		insert into `+tasksTable+` (tracker_fk, bible_plan_fk, read_by) 
		select $1 as tracker_fk, pb.id as bible_plan_fk, 
		       $3::DATE + interval '1' day * (
		           -1 + ceil(
		                (($4::DATE - $3::DATE)::float+1)
		                * pb.running_length /
		                pl.length
		           )
		       ) as read_by
		       from `+biblePlansTable+` pb
			   join `+plansTable+` pl on pl.id = pb.plan_fk
				where pb.plan_fk = $2
	`, trackerID, planID, start, end)
	if err != nil {
		return errors.Wrapf(err, "Could not create task (trackerID: %d, planID: %d, start: %s, end: %s)", trackerID, planID, start, end)
	}

	rows := res.RowsAffected()
	if rows < 1 {
		return errors.Errorf("Could not create task, no rows affected (trackerID: %d, planID: %d, start: %s, end: %s)", trackerID, planID, start, end)
	}
	return nil
}

func (pg *TrackingStore) MoveTrackerDays(ctx context.Context, userID, days int) error {
	_, err := pg.db.Exec(ctx, `
		update `+trackersTable+` 
		set start_date = start_date + interval '1' day * $2,
			end_date = end_date + interval '1' day * $2
		where user_fk = $1
	`, userID, days)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerDays(userID: %d, days: %d) ", userID, days)
	}

	return nil
}

func (pg *TrackingStore) MoveTaskDays(ctx context.Context, userID int, days int) error {
	_, err := pg.db.Exec(ctx, `
		update `+tasksTable+` ta
		set read_by = read_by + interval '1' day * $2
		from `+trackersTable+` tr
		where tr.user_fk = $1 and ta.tracker_fk = tr.id AND not ta.read 
	`, userID, days)
	if err != nil {
		return errors.Wrapf(err, "MoveTaskDays(userID: %d, days: %d) ", userID, days)
	}

	return nil
}

func (pg *TrackingStore) MoveTasks(ctx context.Context, userID int, start, end string) error {
	var setDateStmt string
	if start != "" && end != "" {
		setDateStmt = fmt.Sprintf(`set read_by = ('%s'::DATE) +
	                  interval '1' day * (
						-1 + ceil(
							(('%s'::DATE - '%s'::DATE)::float+1)
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )`, start, end, start)
	} else if start != "" {
		setDateStmt = fmt.Sprintf(`set read_by = ('%s'::DATE) +
	                  interval '1' day * (
						-1 + ceil(
							((f.end_date - '%s'::DATE)::float+1)
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )`, start, start)
	} else {
		setDateStmt = fmt.Sprintf(`set read_by = f.start_date +
	                  interval '1' day * (
						-1 + ceil(
							(('%s'::DATE - f.start_date)::float+1)
							* f.running_length / 
							(select sum(length) from filtered)
							)
					  )`, end)
	}

	_, err := pg.db.Exec(ctx, `
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
	update `+tasksTable+` ta `+
		setDateStmt+
		`from filtered f
	where f.id = ta.id
`, userID)
	if err != nil {
		return errors.Wrapf(err, "db: MoveTasks(userID: %d, start: %v, end %v) ", userID, start, end)
	}

	return nil
}

func (pg *TrackingStore) GetTrackerStart(ctx context.Context, userID int) (time.Time, error) {

	var start time.Time
	err := pg.db.QueryRow(ctx, `
		select start_date from `+trackersTable+`
		where user_fk = $1
	`, userID).Scan(&start)
	if err != nil {
		return time.Time{}, errors.Wrapf(err, "db: GetTrackerStart(userID: %d) ", userID)
	}

	return start, nil
}

func (pg *TrackingStore) GetTrackerEnd(ctx context.Context, userID int) (time.Time, error) {

	var end time.Time
	err := pg.db.QueryRow(ctx, `
		select end_date from `+trackersTable+`
		where user_fk = $1
	`, userID).Scan(&end)
	if err != nil {
		return time.Time{}, errors.Wrapf(err, "db: GetTrackerEnd(userID: %d) ", userID)
	}

	return end, nil
}

func (pg *TrackingStore) MoveTracker(ctx context.Context, userID int, start, end string) error {

	var setDateStmt string
	if start != "" && end != "" {
		setDateStmt = fmt.Sprintf("set start_date = '%s', end_date = '%s' ", start, end)
	} else if start != "" {
		setDateStmt = fmt.Sprintf("set start_date = '%s' ", start)
	} else {
		setDateStmt = fmt.Sprintf("set end_date = '%s' ", end)
	}

	_, err := pg.db.Exec(ctx, `
		update `+trackersTable+" "+setDateStmt+`
		where user_fk = $1
	`, userID)
	if err != nil {
		return errors.Wrapf(err, "db: MoveTracker(userID: %d, start: %v, end %v) ", userID, start, end)
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
