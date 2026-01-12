package storage

import (
	"database/sql"
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/joho/godotenv"
	_ "github.com/lib/pq"

	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/neifen/htmx-login/app/api/storage/companions"
	"github.com/neifen/htmx-login/app/api/storage/plans"
	"github.com/neifen/htmx-login/app/api/storage/tracking"
	"github.com/pkg/errors"
)

func TestCreateNewDB(t *testing.T) {
	db, err := newTestDB()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	userID := 0
	res, err := db.db.Exec("DELETE FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Could not clean up Trackers table: %s", err)
	}

	affected, err := res.RowsAffected()
	if err != nil {
		t.Fatalf("Error getting Rows affected: %s", err)
	}

	var count int
	row := db.db.QueryRow("SELECT count(*) from tracking.tasks")
	row.Scan(&count)
	if count != 0 {
		t.Fatalf("tasks should be emty through delete cascade. Was %d instead", count)
	}

	t.Logf("Rows cleaned up before Test: %d", affected)

	err = db.Tracking.CreateTask(userID, 0, "2025-12-26", "2026-12-26")
	if err != nil {
		t.Fatalf("CreateTask failed: %s", err)
	}

	// ----  check tracker -----=

	rows, err := db.db.Query("SELECT id, user_fk, start_date, end_date FROM tracking.trackers")
	if err != nil {
		t.Fatalf("Error getting Rows from Trackers: %s", err)
	}

	var trackers []tracking.TrackerSettings
	for rows.Next() {
		var tracker tracking.TrackerSettings
		rows.Scan(&tracker.ID, &tracker.UserID, &tracker.FromDate, &tracker.ToDate)
		trackers = append(trackers, tracker)
	}

	if len(trackers) != 1 {
		t.Errorf("There should be only one Tracker, instead was %d", len(trackers))
	}

	singleTracker := trackers[0]
	from := singleTracker.FromDate
	to := singleTracker.ToDate

	if from.Year() != 2025 && from.Month() != 12 && from.Day() != 26 {
		t.Errorf("From Date is %s, should be 2025-12-26", from)
	}

	if to.Year() != 2026 && to.Month() != 12 && to.Day() != 26 {
		t.Errorf("To Date is %s, should be 2026-12-26", to)
	}

	// ----  check tasks -----=

	rows, err = db.db.Query("SELECT id, read, read_by, bible_plan_fk FROM tracking.tasks")
	if err != nil {
		t.Fatalf("Error getting Rows from Tasks: %s", err)
	}

	var tasks []tracking.TrackerModel
	for rows.Next() {
		var task tracking.TrackerModel
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
		db.db.Exec("DELETE FROM tracking.trackers")

		var count int
		row := db.db.QueryRow("SELECT count(*) from tracking.tasks")
		row.Scan(&count)
		if count != 0 {
			t.Fatalf("tasks should be emty through delete cascade. Was %d instead", count)
		}

		defer db.db.Close()
	})
}

// func TestMain(m *testing.M) {
// 	var err error
// 	db, err = newTestDB()
// 	if err != nil {
// 		log.Fatal(err)
// 		os.Exit(1)
// 	}
// 	defer db.db.Close()

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

func newTestDB() (*DB, error) {

	err := loadEnv()
	if err != nil {
		return nil, err
	}

	host := os.Getenv("POSTGRES_HOST")
	port := os.Getenv("POSTGRES_PORT")
	dbname := "testing"
	user := os.Getenv("POSTGRES_USER")
	password := os.Getenv("POSTGRES_PW")

	// connStr := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=verify-full", host, port, user, password, dbname)
	connStr := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable", host, port, user, password, dbname)
	db, err := sql.Open("postgres", connStr)
	if err != nil {
		return nil, errors.New("error 130: could not initialize db")
	}

	if err := db.Ping(); err != nil {
		return nil, errors.Wrapf(err, "couldnt ping with host %s:%s and user %s", host, port, user)
	}

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql"}

	err = execScripts(db, sqlFiles)
	if err != nil {
		return nil, errors.Wrap(err, "couldnt exec script")
	}

	return &DB{
		db:         db,
		Auth:       auth.NewAuthStore(db),
		Bible:      bible.NewBibleStore(db),
		Plans:      plans.NewPlansStore(db),
		Tracking:   tracking.NewTrackingStore(db),
		Companions: companions.NewCompanionsStore(db),
	}, nil
}

func execScripts(db *sql.DB, sqlFiles []string) error {
	for _, file := range sqlFiles {
		path := getRelativePath("app/sql/" + file)
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return errors.Wrapf(err, "error reading %s", file)
		}

		res, err := db.Exec(string(authSQL))
		if err != nil {
			return errors.Wrapf(err, "error initializing %s", file)
		}
		aff, _ := res.RowsAffected()
		affID, _ := res.LastInsertId()
		fmt.Printf("created %s tables, affected Rows: %v, Last affected Id: %v \n", file, aff, affID)
	}

	return nil
}
