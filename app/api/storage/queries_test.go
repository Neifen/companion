package storage

import (
	"database/sql"
	"fmt"
	"os"
	"testing"

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
		t.FailNow()
	}

	db.Tracking.CreateTask(0, 0, "2025-12-26 17:53", "2026-12-26 17:54")
}

func newTestDB() (*DB, error) {
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
		return nil, err
	}

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql"}

	for _, file := range sqlFiles {
		path := "app/sql/" + file
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return nil, errors.Wrapf(err, "error reading %s", file)
		}

		res, err := db.Exec(string(authSQL))
		if err != nil {
			return nil, errors.Wrapf(err, "error initializing %s", file)
		}
		aff, _ := res.RowsAffected()
		affID, _ := res.LastInsertId()
		fmt.Printf("created %s tables, affected Rows: %v, Last affected Id: %v \n", file, aff, affID)
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
