package services_test

import (
	"context"
	"fmt"
	"math"
	"math/rand"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"

	"github.com/neifen/htmx-login/app/api/services"
	"github.com/neifen/htmx-login/app/api/storage"
	"github.com/neifen/htmx-login/app/api/storage/db"
	"github.com/neifen/htmx-login/app/api/storage/tracking"
	"github.com/pkg/errors"
)

func clearTrackers(db db.DB) error {
	res, err := db.Exec(context.Background(), "DELETE FROM tracking.trackers")
	if err != nil {
		return errors.Wrap(err, "Could not clean up Trackers table")
	}

	affected := res.RowsAffected()

	var count int
	row := db.QueryRow(context.Background(), "SELECT count(*) from tracking.tasks")
	row.Scan(&count)
	if count != 0 {
		return errors.Errorf("tasks should be emty through delete cascade. Was %d instead", count)
	}

	fmt.Printf("Tracker Rows cleaned up: %d\n", affected)
	return nil
}

func TestCreateTracker(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	err = serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=

	rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	var trackers []tracking.TrackerModel
	for rows.Next() {
		var tracker tracking.TrackerModel
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	singleTracker := trackers[0]
	from := singleTracker.StartDate
	to := singleTracker.EndDate

	if from.Year() != 2025 && from.Month() != 12 && from.Day() != 26 {
		t.Errorf("From Date is %s, should be 2025-12-26", from)
	}

	if to.Year() != 2026 && to.Month() != 12 && to.Day() != 26 {
		t.Errorf("To Date is %s, should be 2026-12-26", to)
	}

	// ----  check tasks -----=
	rows, err = db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}

	var tasks []tracking.TaskModel
	for rows.Next() {
		var task tracking.TaskModel
		rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
		tasks = append(tasks, task)
	}

	if len(tasks) != 1189 {
		t.Errorf("There should be 1189, instead was %d", len(tasks))
	}

	first := tasks[0].ReadBy
	last := tasks[len(tasks)-1].ReadBy

	if first.Year() != 2025 && first.Month() != 12 && first.Day() != 26 {
		t.Errorf("First ReadyBy Date is %s, should be 2025-12-26", first)
	}

	if last.Year() != 2026 && last.Month() != 12 && last.Day() != 26 {
		t.Errorf("Last ReadyBy Date is %s, should be 2026-12-26", last)
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

func TestReadTracker(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	err = serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=
	tracker, err := serv.ReadUserTracker(context.Background(), userID)
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	from := tracker.StartDate
	to := tracker.EndDate

	if from.Year() != 2025 && from.Month() != 12 && from.Day() != 26 {
		t.Errorf("From Date is %s, should be 2025-12-26", from)
	}

	if to.Year() != 2026 && to.Month() != 12 && to.Day() != 26 {
		t.Errorf("To Date is %s, should be 2026-12-26", to)
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

func TestPaginateAndCheckTask(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	fromRaw := "2025-12-26"
	from, _ := time.Parse("2006-01-02", fromRaw)

	toRaw := "2026-12-26"
	to, _ := time.Parse("2006-01-02", toRaw)

	err = serv.CreateTracker(context.Background(), userID, 0, fromRaw, toRaw)
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	if err != nil {
		t.Fatalf("Parse failed: %s", err)
	}

	models, moreAfter, err := serv.ReadTasksFrom(context.Background(), userID, from)
	if err != nil {
		t.Fatalf("ReadTasksFrom failed: %s", err)
	}
	if !moreAfter {
		t.Fatalf("Should have more Tasks")
	}
	if len(models) != 31 {
		t.Fatalf("ReadTaskFrom Length should be 10, was %d", len(models))
	}

	models, moreBefore, err := serv.ReadTasksUntil(context.Background(), userID, to)
	if err != nil {
		t.Fatalf("ReadTasksFrom failed: %s", err)
	}
	if !moreBefore {
		t.Fatalf("Should have more Tasks")
	}
	if len(models) != 45 {
		t.Fatalf("ReadTaskFrom Length should be 45, was %d", len(models))
	}

	models, moreAfter, err = serv.ReadTasksFrom(context.Background(), userID, to)
	if err != nil {
		t.Fatalf("ReadTasksFrom failed: %s", err)
	}
	if moreAfter {
		t.Fatalf("Should have no more Tasks")
	}
	if len(models) != 4 {
		t.Fatalf("ReadTaskFrom Length should be 4, was %d", len(models))
	}

	models, moreBefore, err = serv.ReadTasksUntil(context.Background(), userID, from.AddDate(0, 0, 1))
	if err != nil {
		t.Fatalf("ReadTasksUntil failed: %s", err)
	}
	if moreBefore {
		t.Fatalf("Should have no more Tasks (TasksUntil)")
	}
	if len(models) != 3 {
		t.Fatalf("ReadTaskTo Length should be 0, was %d", len(models))
	}
	for id, task := range models {
		if task.Read {
			t.Fatalf("Model nr %d should not be read but was", id)
		}
	}

	serv.CheckTask(context.Background(), models[0].ID, true)
	serv.CheckTask(context.Background(), models[2].ID, true)
	models, moreBefore, err = serv.ReadTasksUntil(context.Background(), userID, from.AddDate(0, 0, 1))

	if err != nil {
		t.Fatalf("ReadTasksUntil failed: %s", err)
	}
	if moreBefore {
		t.Fatalf("Should have no more Tasks (TasksUntil)")
	}
	if len(models) != 3 {
		t.Fatalf("ReadTaskTo Length should be 0, was %d", len(models))
	}
	if !models[0].Read {
		t.Fatalf("Model nr 0 should be read but wasn't")
	}
	if models[1].Read {
		t.Fatalf("Model nr 1 should not be read but was")
	}
	if !models[2].Read {
		t.Fatalf("Model nr 2 should be read but wasn't")
	}

	serv.CheckTask(context.Background(), models[0].ID, false)
	serv.CheckTask(context.Background(), models[2].ID, true)
	models, moreBefore, err = serv.ReadTasksUntil(context.Background(), userID, from.AddDate(0, 0, 1))

	if err != nil {
		t.Fatalf("ReadTasksUntil failed: %s", err)
	}
	if moreBefore {
		t.Fatalf("Should have no more Tasks (TasksUntil)")
	}
	if len(models) != 3 {
		t.Fatalf("ReadTaskTo Length should be 0, was %d", len(models))
	}
	if models[0].Read {
		t.Fatalf("Model nr 0 should not be read but was")
	}
	if models[1].Read {
		t.Fatalf("Model nr 1 should not be read but was")
	}
	if !models[2].Read {
		t.Fatalf("Model nr 2 should be read but wasn't")
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

func TestDeleteTracker(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	err = serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=
	rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	var trackers []tracking.TrackerModel
	for rows.Next() {
		var tracker tracking.TrackerModel
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	err = serv.DeleteUserTracker(context.Background(), userID)
	if err != nil {
		t.Fatalf("Error deleting Trackers: %s", err)
	}

	// ----  check tracker -----=
	rows, err = db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	trackers = []tracking.TrackerModel{}
	for rows.Next() {
		var tracker tracking.TrackerModel
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 0 {
		t.Errorf("There should be no more Trackers, instead was %d", len(trackers))
	}

	err = serv.DeleteUserTracker(context.Background(), userID)
	if err != nil {
		t.Fatalf("Error deleting Trackers second time: %s", err)
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

func TestCreateTrackerDouble(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}
	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	err = serv.CreateTracker(context.Background(), userID, 0, "2020-12-26", "2021-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	err = serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=

	rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	var trackers []tracking.TrackerModel
	for rows.Next() {
		var tracker tracking.TrackerModel
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	singleTracker := trackers[0]
	from := singleTracker.StartDate
	to := singleTracker.EndDate

	if from.Year() != 2025 && from.Month() != 12 && from.Day() != 26 {
		t.Errorf("From Date is %s, should be 2025-12-26", from)
	}

	if to.Year() != 2026 && to.Month() != 12 && to.Day() != 26 {
		t.Errorf("To Date is %s, should be 2026-12-26", to)
	}

	// ----  check tasks -----=

	rows, err = db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}

	var tasks []tracking.TaskModel
	for rows.Next() {
		var task tracking.TaskModel
		rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
		tasks = append(tasks, task)
	}

	if len(tasks) != 1189 {
		t.Errorf("There should be 1189, instead was %d", len(tasks))
	}

	first := tasks[0].ReadBy
	last := tasks[len(tasks)-1].ReadBy

	if first.Year() != 2025 && first.Month() != 12 && first.Day() != 26 {
		t.Errorf("First ReadyBy Date is %s, should be 2025-12-26", first)
	}

	if last.Year() != 2026 && last.Month() != 12 && last.Day() != 26 {
		t.Errorf("Last ReadyBy Date is %s, should be 2026-12-26", last)
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}

		defer serv.Close()
	})
}

func TestCreateTrackerDifferentDays(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	err = clearTrackers(db)
	if err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	var planID int
	err = db.QueryRow(context.Background(), "select max(id) from plans.plans").Scan(&planID)
	if err != nil {
		t.Fatalf("Getting max id failed: %s", err)
	}
	timeRanges := []int{2, 3, 10, 100, 200, 300, 400, 500, 600}
	//timeRanges := []int{1000}

	for _, timeRange := range timeRanges {
		begin := time.Now().AddDate(0, 0, rand.Intn(500))
		nowString := begin.Format("2006-01-02")
		inXDays := begin.AddDate(0, 0, timeRange)
		inXDaysString := inXDays.Format("2006-01-02")

		err = serv.CreateTracker(context.Background(), userID, planID, nowString, inXDaysString)
		if err != nil {
			t.Fatalf("CreateTask failed: %s", err)
		}

		// ----  check tracker -----=

		rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}

		var trackers []tracking.TrackerModel
		for rows.Next() {
			var tracker tracking.TrackerModel
			rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
			trackers = append(trackers, tracker)
		}

		if len(trackers) != 1 {
			t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
		}

		singleTracker := trackers[0]
		from := singleTracker.StartDate
		to := singleTracker.EndDate

		if from.Year() != begin.Year() && from.Month() != begin.Month() && from.Day() != begin.Day() {
			t.Errorf("From Date is %s, should be %s", from, begin)
		}

		if to.Year() != inXDays.Year() && to.Month() != inXDays.Month() && to.Day() != inXDays.Day() {
			t.Errorf("To Date is %s, should be %s", to, inXDays)
		}

		// ----  check tasks -----=
		rows, err = db.Query(context.Background(), "SELECT array_agg(id)::varchar, read_by FROM tracking.tasks group by read_by order by read_by")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}

		count := 0
		for rows.Next() {
			var readBy time.Time
			var id string
			rows.Scan(&id, &readBy)
			fmt.Printf("%s for %s\n", readBy.Format("2006-01-02"), id)
			count++
		}

		if count-1 != timeRange {
			t.Errorf("There should be %d, instead was %d", timeRange, count)
		}
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}

		defer serv.Close()
	})
}

func TestMoveTrackersParallel(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	if err := clearTrackers(db); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0
	start := time.Now().AddDate(0, 0, rand.Intn(500))
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	if err := serv.MoveTrackerDays(context.Background(), userID, 100); err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=
	rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	var trackers []tracking.TrackerModel
	for rows.Next() {
		var tracker tracking.TrackerModel
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	singleTracker := trackers[0]
	from := singleTracker.StartDate
	to := singleTracker.EndDate

	start = start.AddDate(0, 0, 100)
	stop = stop.AddDate(0, 0, 100)

	if from.Year() != start.Year() && from.Month() != start.Month() && from.Day() != start.Day() {
		t.Errorf("From Date is %s, should be %s", from, start)
	}

	if to.Year() != stop.Year() && to.Month() != stop.Month() && to.Day() != stop.Day() {
		t.Errorf("To Date is %s, should be %s", to, stop)
	}

	// ----  check tasks -----=

	rows, err = db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}

	var tasks []tracking.TaskModel
	for rows.Next() {
		var task tracking.TaskModel
		rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
		tasks = append(tasks, task)
	}

	if len(tasks) != 1189 {
		t.Errorf("There should be 1189, instead was %d", len(tasks))
	}

	first := tasks[0].ReadBy
	last := tasks[len(tasks)-1].ReadBy

	if first.Year() != start.Year() && first.Month() != start.Month() && first.Day() != start.Day() {
		t.Errorf("First ReadyBy Date is %s, should be %s", first, start)
	}

	if last.Year() != stop.Year() && last.Month() != stop.Month() && last.Day() != stop.Day() {
		t.Errorf("Last ReadyBy Date is %s, should be %s", last, stop)
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

func TestMoveTrackers(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	if err := clearTrackers(db); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0

	start := time.Now().AddDate(0, 0, rand.Intn(500))
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	type testEnv struct {
		start string
		end   string
		diff  int

		err bool
	}

	testMatrix := []testEnv{
		{"2026-01-01", "2027-01-01", 365, false},
		{"", "2026-02-01", 31, false},
		{"", "2025-12-31", -1, true},
		{"2027-01-01", "", -1, true},
		{"2017-13-1", "", -1, true},
		{"", "2030-02-30", -1, true},
		{"2025-02-01", "", 365, false},
		{"2030-01-01", "", -1, true},
	}

	for _, test := range testMatrix {

		if err := serv.MoveTracker(context.Background(), userID, test.start, test.end); err != nil {
			if !test.err {
				t.Fatalf("CreateTask failed: %s", err)
			} else {
				fmt.Printf("expected error: %s \n", err)
				continue
			}
		}

		if test.err {
			t.Fatalf("Error was expected for %s, %s, didn't happen", start, stop)
		}

		// ----  check tracker -----=
		rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}

		var trackers []tracking.TrackerModel
		for rows.Next() {
			var tracker tracking.TrackerModel
			rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
			trackers = append(trackers, tracker)
		}

		if len(trackers) != 1 {
			t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
		}

		singleTracker := trackers[0]
		from := singleTracker.StartDate
		to := singleTracker.EndDate

		if test.start != "" {
			start, err = time.Parse("2006-01-02", test.start)
			if err != nil {
				t.Errorf("Error parsing start: %s", err)
			}
		}
		if test.end != "" {
			stop, err = time.Parse("2006-01-02", test.end)
			if err != nil {
				t.Errorf("Error parsing start: %s", err)
			}
		}

		if from.Year() != start.Year() && from.Month() != start.Month() && from.Day() != start.Day() {
			t.Errorf("From Date is %s, should be %s", from, start)
		}

		if to.Year() != stop.Year() && to.Month() != stop.Month() && to.Day() != stop.Day() {
			t.Errorf("To Date is %s, should be %s", to, stop)
		}

		actDiff := int(to.Sub(from).Hours() / 24)
		if test.diff != actDiff {
			t.Errorf("Diff is %d, should be %d", actDiff, test.diff)
		}

		// ----  check tasks -----=

		rows, err = db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}

		var tasks []tracking.TaskModel
		for rows.Next() {
			var task tracking.TaskModel
			rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
			tasks = append(tasks, task)
		}

		if len(tasks) != 1189 {
			t.Errorf("There should be 1189, instead was %d", len(tasks))
		}

		first := tasks[0].ReadBy
		last := tasks[len(tasks)-1].ReadBy

		if first.Year() != start.Year() && first.Month() != start.Month() && first.Day() != start.Day() {
			t.Errorf("First ReadBy Date is %s, should be %s", first, start)
		}

		if last.Year() != stop.Year() && last.Month() != stop.Month() && last.Day() != stop.Day() {
			t.Errorf("Last ReadBy Date is %s, should be %s", last, stop)
		}

		actDiff = int(last.Sub(first).Hours() / 24)
		if test.diff != actDiff {
			t.Errorf("Diff is %d, should be %d", actDiff, test.diff)
		}
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

func TestMoveTrackersStart(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	if err := clearTrackers(db); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0

	start := time.Now().AddDate(0, 0, rand.Intn(500))
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	type testEnv struct {
		start   string
		moveEnd bool
		diff    int

		err bool
	}

	testMatrix := []testEnv{
		{"2020-02-01", true, 100, false},
		{"2021-01-15", true, 100, false},
		{"2026-01-01", true, 100, false},
		{"2027-01-01", false, -1, true},
		{"2026-01-02", false, 99, false},
		{"2026-02-01", false, 69, false},
	}

	for _, test := range testMatrix {
		if err := serv.MoveTrackerStart(context.Background(), userID, test.start, test.moveEnd); err != nil {
			if !test.err {
				t.Fatalf("CreateTask failed: %s", err)
			} else {
				fmt.Printf("expected error: %s \n", err)
				continue
			}
		}

		if test.err {
			t.Fatalf("Error was expected for %s, %s, didn't happen", start, stop)
		}

		// ----  check tracker -----=
		rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}

		var trackers []tracking.TrackerModel
		for rows.Next() {
			var tracker tracking.TrackerModel
			rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
			trackers = append(trackers, tracker)
		}

		if len(trackers) != 1 {
			t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
		}

		singleTracker := trackers[0]
		from := singleTracker.StartDate
		to := singleTracker.EndDate

		start, err = time.Parse("2006-01-02", test.start)
		if err != nil {
			t.Errorf("Error parsing start: %s", err)
		}

		if from.Year() != start.Year() && from.Month() != start.Month() && from.Day() != start.Day() {
			t.Errorf("From Date is %s, should be %s", from, start)
		}

		actDiff := int(to.Sub(from).Hours() / 24)
		if test.diff != actDiff {
			t.Errorf("Diff is %d, should be %d", actDiff, test.diff)
		}

		// ----  check tasks -----=

		rows, err = db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}

		var tasks []tracking.TaskModel
		for rows.Next() {
			var task tracking.TaskModel
			rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
			tasks = append(tasks, task)
		}

		if len(tasks) != 1189 {
			t.Errorf("There should be 1189, instead was %d", len(tasks))
		}

		first := tasks[0].ReadBy
		last := tasks[len(tasks)-1].ReadBy

		if first.Year() != start.Year() && first.Month() != start.Month() && first.Day() != start.Day() {
			t.Errorf("First ReadBy Date is %s, should be %s", first, start)
		}

		actDiff = int(last.Sub(first).Hours() / 24)
		if test.diff != actDiff {
			t.Errorf("Diff is %d, should be %d", actDiff, test.diff)
		}
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

func TestMoveTrackersEnd(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	if err := clearTrackers(db); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID := 0

	start := time.Now().AddDate(0, 0, 100)
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	type testEnv struct {
		end        string
		resetStart bool
		diff       int

		err bool
	}

	testMatrix := []testEnv{
		{stop.AddDate(0, 0, 100).Format("2006-01-02"), false, 200, false},
		{stop.AddDate(0, 0, -50).Format("2006-01-02"), false, 50, false},
		{stop.AddDate(0, 0, -101).Format("2006-01-02"), false, -1, true},
		{time.Now().AddDate(0, 0, -10).Format("2006-01-02"), true, -1, true},
		{time.Now().AddDate(0, 0, 10).Format("2006-01-02"), true, 10, false},
		{time.Now().AddDate(0, 0, 100).Format("2006-01-02"), true, 100, false},
	}

	for _, test := range testMatrix {
		if err := serv.MoveTrackerEnd(context.Background(), userID, test.end, test.resetStart); err != nil {
			if !test.err {
				t.Fatalf("CreateTask failed: %s", err)
			} else {
				fmt.Printf("expected error: %s \n", err)
				continue
			}
		}

		if test.err {
			t.Fatalf("Error was expected for %s, %s, didn't happen", start, stop)
		}

		// ----  check tracker -----=
		rows, err := db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}

		var trackers []tracking.TrackerModel
		for rows.Next() {
			var tracker tracking.TrackerModel
			rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
			trackers = append(trackers, tracker)
		}

		if len(trackers) != 1 {
			t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
		}

		singleTracker := trackers[0]
		from := singleTracker.StartDate
		to := singleTracker.EndDate
		now := time.Now()

		end, err := time.Parse("2006-01-02", test.end)
		if err != nil {
			t.Errorf("Error parsing start: %s", err)
		}

		if test.resetStart {
			if from.Year() != now.Year() && from.Month() != now.Month() && from.Day() != now.Day() {
				t.Errorf("From Date is %s, should be %s", from, now)
			}
		}

		if to.Year() != end.Year() && to.Month() != end.Month() && to.Day() != end.Day() {
			t.Errorf("To Date is %s, should be %s", from, start)
		}

		actDiff := int(to.Sub(from).Hours() / 24)
		if test.diff != actDiff {
			t.Errorf("Diff is %d, should be %d", actDiff, test.diff)
		}

		// ----  check tasks -----=

		rows, err = db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}

		var tasks []tracking.TaskModel
		for rows.Next() {
			var task tracking.TaskModel
			rows.Scan(&task.ID, &task.Read, &task.ReadBy, &task.ChapterID)
			tasks = append(tasks, task)
		}

		if len(tasks) != 1189 {
			t.Errorf("There should be 1189, instead was %d", len(tasks))
		}

		first := tasks[0].ReadBy
		last := tasks[len(tasks)-1].ReadBy

		if test.resetStart {
			if first.Year() != now.Year() && first.Month() != now.Month() && first.Day() != now.Day() {
				t.Errorf("First ReadBy Date is %s, should be %s", first, now)
			}
		}

		if last.Year() != end.Year() && last.Month() != end.Month() && last.Day() != end.Day() {
			t.Errorf("Last Date is %s, should be %s", from, start)
		}

		actDiff = int(last.Sub(first).Hours() / 24)
		if test.diff != actDiff {
			t.Errorf("Diff is %d, should be %d", actDiff, test.diff)
		}
	}

	t.Cleanup(func() {
		err = clearTrackers(db)
		if err != nil {
			t.Fatalf("Clearing Trackers failed: %s", err)
		}
		defer serv.Close()
	})
}

// func TestMain(m *testing.M) {
// 	var err error
// 	db, err = newTestDB()
// 	if err != nil {
// 		log.Fatal(err)
// 		os.Exit(1)
// 	}
// 	deferdb.db.Close()

// 	exitCode := m.Run()
// 	os.Exit(exitCode)
// }

func getRelativePath(path string) string {
	// Get the directory of this test file
	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	return filepath.Join(dir, "../../..", path)
}

func loadEnv() error {
	envPath := getRelativePath(".env")
	fmt.Printf("env path is: %s\n", envPath)

	err := godotenv.Load(envPath)
	if err == nil {
		return errors.Wrap(err, "error 130: could not load .env")
	}
	return nil
}

func insertSplitVersesPlan(db *pgxpool.Pool) error {
	tx, err := db.Begin(context.Background())
	if err != nil {
		return errors.Wrap(err, "first insert")
	}
	_, err = tx.Exec(context.Background(), `INSERT INTO plans.plans( name, plan_desc)
    VALUES ('split chapters', 'This is like the plan that is shown by default but with long chapters split. Is just a canonical plan')
ON CONFLICT
    DO NOTHING;`)
	if err != nil {
		return errors.Wrap(err, "first insert")
	}

	row := tx.QueryRow(context.Background(), "select max(id) from plans.plans")
	var plansID int32
	err = row.Scan(&plansID)
	if err != nil {
		return errors.Wrap(err, "query plans ID")
	}

	row = tx.QueryRow(context.Background(), "select avg(chapter_word_count) from static.chapters")
	var avg float32
	err = row.Scan(&avg)
	if err != nil {
		return errors.Wrap(err, "query avg")
	}

	rows, err := tx.Query(context.Background(), `    
	select
		c.id,
		c.chapter_word_count as length,
		c.book_name,
		v.ids,
		v.lengths,
		v.start,
		v.stop
    from
    	static.chapters c
    join 
    	(select 
			v.chapter_fk, 
			array_agg(v.id order by v.id) as ids,
			array_agg(v.verse_word_count order by v.id) as lengths, 
			min(v.verse_nr) as start, 
			max(v.verse_nr ) as stop 
		from static.verses v 
		group by v.chapter_fk)
    v on v.chapter_fk = c.id`)
	if err != nil {
		return errors.Wrap(err, "query deets")
	}

	type chapter struct {
		ID           int
		length       int
		bookName     string
		verseIDS     []int32
		verseLenghts []int32

		verseStart int
		verseStop  int
	}
	var chapters []chapter

	for rows.Next() {
		var chapter chapter
		rows.Scan(&chapter.ID, &chapter.length, &chapter.bookName, &chapter.verseIDS, &chapter.verseLenghts, &chapter.verseStart, &chapter.verseStop)
		chapters = append(chapters, chapter)
	}

	var sum int32
	for _, chapter := range chapters {
		if float32(chapter.length) > (avg * 2) {
			var versesIDS [][]int
			var versesDesc []string
			var versesLengths []int32
			verseLength := int32(0)
			min := 0.0
			max := 0.0
			iter := 0
			var verseIDS []int

			for verseIter, length := range chapter.verseLenghts {
				verseLength += length
				verseIDS = append(verseIDS, verseIter)

				min = math.Min(min, float64(verseIter))
				max = math.Max(max, float64(verseIter))

				if float32(verseLength) > avg || verseIter+1 == len(chapter.verseLenghts) {
					if verseIter+1 == len(chapter.verseLenghts) && float32(verseLength) < (avg*0.75) {
						lastDesc := versesDesc[len(versesDesc)-1]
						splitDesc := strings.Split(lastDesc, "-")
						versesDesc[len(versesDesc)-1] = fmt.Sprintf("%s-%d", splitDesc[0], int(max))
						versesIDS[len(versesIDS)-1] = append(versesIDS[len(versesIDS)-1], verseIDS...)
						versesLengths[len(versesLengths)-1] = versesLengths[len(versesLengths)-1] + verseLength
					} else {
						versesDesc = append(versesDesc, fmt.Sprintf("%s %d-%d", chapter.bookName, int(min), int(max)))
						versesIDS = append(versesIDS, verseIDS)
						versesLengths = append(versesLengths, verseLength)
						max++
						min = max
						iter++
						verseIDS = []int{}
						verseLength = 0
					}
				}
			}

			for insertIter, ids := range versesIDS {
				sum += versesLengths[insertIter]

				_, err = tx.Exec(context.Background(), `
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length, verse_fks, verses) 
			values ($1, $2, $3, $4, $5, $6)
			`, plansID, chapter.ID, versesLengths[insertIter], sum, ids, versesDesc[insertIter])
				if err != nil {
					return errors.Wrap(err, "insert plans.bible_plans")
				}
			}

		} else {
			sum += int32(chapter.length)

			_, err = tx.Exec(context.Background(), `
			Insert into plans.bible_plans 
				(plan_fk, chapter_fk, length, running_length) 
			values ($1, $2, $3, $4)
			`, plansID, chapter.ID, chapter.length, sum)
			if err != nil {
				return errors.Wrap(err, "insert plans.bible_plans")
			}
		}

	}

	err = tx.Commit(context.Background())
	if err != nil {
		return errors.Wrap(err, "commit")
	}
	return nil

}

func newTestService() (*services.Services, db.DB, error) {
	err := loadEnv()
	if err != nil {
		return nil, nil, err
	}

	os.Setenv("POSTGRES_DB", "testing")
	store, db, err := storage.NewDB()
	if err != nil {
		return nil, nil, errors.Wrap(err, "couldnt create new db")
	}

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql"}

	err = execScripts(db, sqlFiles)
	if err != nil {
		return nil, nil, errors.Wrap(err, "couldnt exec script")
	}

	err = insertSplitVersesPlan(db)
	if err != nil {
		return nil, nil, errors.Wrap(err, "couldnt write split verses")
	}

	return services.NewServices(store), db, nil
}

func execScripts(db *pgxpool.Pool, sqlFiles []string) error {
	for _, file := range sqlFiles {
		path := getRelativePath("app/sql/" + file)
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return errors.Wrapf(err, "error reading %s", file)
		}

		res, err := db.Exec(context.Background(), string(authSQL))
		if err != nil {
			return errors.Wrapf(err, "error initializing %s", file)
		}
		aff := res.RowsAffected()
		fmt.Printf("created %s tables, affected Rows: %v \n", file, aff)
	}

	return nil
}
