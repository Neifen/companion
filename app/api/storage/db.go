// Package storage deals with everything that has to do with the PostgresDB of this application
package storage

import (
	"context"
	"fmt"
	"os"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/neifen/companion/app/api/storage/bible"
	"github.com/neifen/companion/app/api/storage/companions"
	"github.com/neifen/companion/app/api/storage/db"
	"github.com/neifen/companion/app/api/storage/iptracking"
	"github.com/neifen/companion/app/api/storage/plans"
	"github.com/neifen/companion/app/api/storage/tracking"
	"github.com/pkg/errors"
)

func (s *Storage) CreateTX(ctx context.Context) error {
	if s.pgx == nil {
		panic("s.pgx is nil!")
	}
	if ctx == nil {
		panic("ctx is nil!") // unlikely to panic by itself
	}

	tx, err := s.pgx.Begin(ctx)
	if err != nil {
		return errors.Wrap(err, "db: Create TX")
	}

	s.db = tx
	s.tx = tx

	return nil
}

func (s *Storage) RollbackTX(ctx context.Context) error {
	if s.tx == nil {
		return nil
	}

	err := s.tx.Rollback(ctx)
	if err != nil {
		return errors.Wrap(err, "db: Rollback TX")
	}

	s.db = s.pgx
	return nil
}

func (s *Storage) CommitTX(ctx context.Context) error {
	if s.tx == nil {
		return errors.New("db: Commit TX. No tx started")
	}

	err := s.tx.Commit(ctx)
	if err != nil {
		return errors.Wrap(err, "db: Commit TX")
	}

	s.db = s.pgx
	return nil
}

// Close DO NOT CALL THIS OTHER THAN AT END OF TEST OR MAIN
func (s *Storage) Close() {
	s.pgx.Close()
}

type Storage struct {
	pgx *pgxpool.Pool
	tx  pgx.Tx
	db  db.DB

	Auth       *auth.AuthStore
	Bible      *bible.BibleStore
	Plans      *plans.PlansStore
	Tracking   *tracking.TrackingStore
	Companions *companions.CompanionsStore
	IPTracking *iptracking.IPTrackingStore
}

func NewDB() (*Storage, *pgxpool.Pool, error) {
	host := os.Getenv("POSTGRES_HOST")
	port := os.Getenv("POSTGRES_PORT")
	dbname := os.Getenv("POSTGRES_DB")
	user := os.Getenv("POSTGRES_USER")
	password := os.Getenv("POSTGRES_PW")

	// connStr := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=verify-full", host, port, user, password, dbname)
	connStr := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable", host, port, user, password, dbname)

	pgx, err := pgxpool.New(context.Background(), connStr)
	if err != nil {
		return nil, nil, errors.Wrap(err, "db: New DB")
	}

	if err := pgx.Ping(context.Background()); err != nil {
		return nil, nil, err
	}

	return &Storage{
		pgx:        pgx,
		db:         pgx,
		Auth:       auth.NewAuthStore(pgx),
		Bible:      bible.NewBibleStore(pgx),
		Plans:      plans.NewPlansStore(pgx),
		Tracking:   tracking.NewTrackingStore(pgx),
		Companions: companions.NewCompanionsStore(pgx),
		IPTracking: iptracking.NewIPTrackingStore(pgx),
	}, pgx, nil
}

func (s *Storage) InitDB() error {

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql", "test_data/tracking_data.sql"}

	for _, file := range sqlFiles {
		path := "app/sql/" + file
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return errors.Wrapf(err, "db: Init DB with file %s", file)
		}

		res, err := s.pgx.Exec(context.Background(), string(authSQL))
		if err != nil {
			return errors.Wrapf(err, "db: Init DB with file %s with %s", file, string(authSQL))
		}
		aff := res.RowsAffected()
		fmt.Printf("created %s tables, affected Rows: %v \n", file, aff)
	}

	return nil
}
