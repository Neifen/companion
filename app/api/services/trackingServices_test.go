package services_test

import (
	"context"
	"fmt"
	"math/rand"
	"testing"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/api/storage/tracking"
)

func TestCreateTracker(t *testing.T) {
	testContext.resetTracking = true

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")
	err := testContext.serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=

	rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}
	defer rows.Close()

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
	rows, err = testContext.db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}
	defer rows.Close()

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

}

func TestReadTracker(t *testing.T) {
	testContext.resetTracking = true

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")
	err := testContext.serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=
	tracker, err := testContext.serv.ReadUserTracker(context.Background(), userID)
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
}

func TestPaginateAndCheckTask(t *testing.T) {
	testContext.resetTracking = true

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")
	fromRaw := "2025-12-26"
	from, _ := time.Parse("2006-01-02", fromRaw)

	toRaw := "2026-12-26"
	to, _ := time.Parse("2006-01-02", toRaw)

	err := testContext.serv.CreateTracker(context.Background(), userID, 0, fromRaw, toRaw)
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	models, moreAfter, err := testContext.serv.ReadTasksFrom(context.Background(), userID, from)
	if err != nil {
		t.Fatalf("ReadTasksFrom failed: %s", err)
	}
	if !moreAfter {
		t.Fatalf("Should have more Tasks")
	}
	if len(models) != 31 {
		t.Fatalf("ReadTaskFrom Length should be 10, was %d", len(models))
	}

	models, moreBefore, err := testContext.serv.ReadTasksUntil(context.Background(), userID, to)
	if err != nil {
		t.Fatalf("ReadTasksFrom failed: %s", err)
	}
	if !moreBefore {
		t.Fatalf("Should have more Tasks")
	}
	if len(models) != 45 {
		t.Fatalf("ReadTaskFrom Length should be 45, was %d", len(models))
	}

	models, moreAfter, err = testContext.serv.ReadTasksFrom(context.Background(), userID, to)
	if err != nil {
		t.Fatalf("ReadTasksFrom failed: %s", err)
	}
	if moreAfter {
		t.Fatalf("Should have no more Tasks")
	}
	if len(models) != 4 {
		t.Fatalf("ReadTaskFrom Length should be 4, was %d", len(models))
	}

	models, moreBefore, err = testContext.serv.ReadTasksUntil(context.Background(), userID, from.AddDate(0, 0, 1))
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

	testContext.serv.CheckTask(context.Background(), models[0].ID, true)
	testContext.serv.CheckTask(context.Background(), models[2].ID, true)
	models, moreBefore, err = testContext.serv.ReadTasksUntil(context.Background(), userID, from.AddDate(0, 0, 1))

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

	testContext.serv.CheckTask(context.Background(), models[0].ID, false)
	testContext.serv.CheckTask(context.Background(), models[2].ID, true)
	models, moreBefore, err = testContext.serv.ReadTasksUntil(context.Background(), userID, from.AddDate(0, 0, 1))

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
}

func TestDeleteTracker(t *testing.T) {
	testContext.resetTracking = true

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")
	err := testContext.serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=
	rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}
	defer rows.Close()

	var trackers []tracking.TrackerModel
	for rows.Next() {
		var tracker tracking.TrackerModel
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	err = testContext.serv.DeleteUserTracker(context.Background(), userID)
	if err != nil {
		t.Fatalf("Error deleting Trackers: %s", err)
	}

	// ----  check tracker -----=
	rows, err = testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}
	defer rows.Close()

	trackers = []tracking.TrackerModel{}
	for rows.Next() {
		var tracker tracking.TrackerModel
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.StartDate, &tracker.EndDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 0 {
		t.Errorf("There should be no more Trackers, instead was %d", len(trackers))
	}

	err = testContext.serv.DeleteUserTracker(context.Background(), userID)
	if err != nil {
		t.Fatalf("Error deleting Trackers second time: %s", err)
	}
}

func TestCreateTrackerDouble(t *testing.T) {
	testContext.resetTracking = true

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")
	err := testContext.serv.CreateTracker(context.Background(), userID, 0, "2020-12-26", "2021-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	err = testContext.serv.CreateTracker(context.Background(), userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=

	rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}
	defer rows.Close()

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

	rows, err = testContext.db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}
	defer rows.Close()

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
}

func TestCreateTrackerDifferentDays(t *testing.T) {
	testContext.resetTracking = true

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")
	var planID int
	err := testContext.db.QueryRow(context.Background(), "select max(id) from plans.plans").Scan(&planID)
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

		err = testContext.serv.CreateTracker(context.Background(), userID, planID, nowString, inXDaysString)
		if err != nil {
			t.Fatalf("CreateTask failed: %s", err)
		}

		// ----  check tracker -----=

		rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}
		defer rows.Close()

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
		rows, err = testContext.db.Query(context.Background(), "SELECT array_agg(id)::varchar, read_by FROM tracking.tasks group by read_by order by read_by")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}
		defer rows.Close()

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
}

func TestMoveTrackersParallel(t *testing.T) {
	testContext.resetTracking = true

	if err := clearTrackers(); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")
	start := time.Now().AddDate(0, 0, rand.Intn(500))
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := testContext.serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	if err := testContext.serv.MoveTrackerDays(context.Background(), userID, 100); err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=
	rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}
	defer rows.Close()

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

	rows, err = testContext.db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}
	defer rows.Close()

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
}

func TestMoveTrackers(t *testing.T) {
	testContext.resetTracking = true

	if err := clearTrackers(); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")

	start := time.Now().AddDate(0, 0, rand.Intn(500))
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := testContext.serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
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

		if err := testContext.serv.MoveTracker(context.Background(), userID, test.start, test.end); err != nil {
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
		rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}
		defer rows.Close()

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

		rows, err = testContext.db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}
		defer rows.Close()

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
}

func TestMoveTrackersStart(t *testing.T) {
	testContext.resetTracking = true

	if err := clearTrackers(); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")

	start := time.Now().AddDate(0, 0, rand.Intn(500))
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := testContext.serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
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
		if err := testContext.serv.MoveTrackerStart(context.Background(), userID, test.start, test.moveEnd); err != nil {
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
		rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}
		defer rows.Close()

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

		rows, err = testContext.db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}
		defer rows.Close()

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
}

func TestMoveTrackersEnd(t *testing.T) {
	testContext.resetTracking = true

	if err := clearTrackers(); err != nil {
		t.Fatalf("Clearing Trackers failed: %s", err)
	}

	userID, _ := uuid.Parse("550e8400-e29b-41d4-a716-446655440000")

	start := time.Now().AddDate(0, 0, 100)
	startString := start.Format("2006-01-02")
	stop := start.AddDate(0, 0, 100)
	stopString := stop.Format("2006-01-02")
	if err := testContext.serv.CreateTracker(context.Background(), userID, 0, startString, stopString); err != nil {
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
		if err := testContext.serv.MoveTrackerEnd(context.Background(), userID, test.end, test.resetStart); err != nil {
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
		rows, err := testContext.db.Query(context.Background(), "SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
		if err != nil {
			t.Fatalf("Error getting Rows from Trackers: %s", err)
		}
		defer rows.Close()

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

		rows, err = testContext.db.Query(context.Background(), "SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
		if err != nil {
			t.Fatalf("Error getting Rows from Tasks: %s", err)
		}
		defer rows.Close()

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
}
