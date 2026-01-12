// Package storage deals with everything that has to do with the PostgresDB of this application
package storage

import (
	"database/sql"
	"fmt"
	"os"

	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/neifen/htmx-login/app/api/storage/companions"
	"github.com/neifen/htmx-login/app/api/storage/plans"
	"github.com/neifen/htmx-login/app/api/storage/tracking"
	"github.com/pkg/errors"
)

type DB struct {
	db *sql.DB
	//todo use pgx

	Auth *auth.AuthStore

	Bible      *bible.BibleStore
	Plans      *plans.PlansStore
	Tracking   *tracking.TrackingStore
	Companions *companions.CompanionsStore
}

func NewDB() (*DB, error) {
	host := os.Getenv("POSTGRES_HOST")
	port := os.Getenv("POSTGRES_PORT")
	dbname := os.Getenv("POSTGRES_DB")
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

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql", "test_data/tracking_data.sql"}

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
