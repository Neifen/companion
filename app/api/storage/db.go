// Package storage deals with everything that has to do with the PostgresDB of this application
package storage

import (
	"context"
	"fmt"
	"os"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/neifen/htmx-login/app/api/storage/bible"
	"github.com/neifen/htmx-login/app/api/storage/companions"
	"github.com/neifen/htmx-login/app/api/storage/plans"
	"github.com/neifen/htmx-login/app/api/storage/tracking"
	"github.com/pkg/errors"
)

type DB interface {
	Exec(ctx context.Context, sql string, args ...any) (pgconn.CommandTag, error)
	Query(ctx context.Context, sql string, args ...any) (pgx.Rows, error)
	QueryRow(ctx context.Context, sql string, args ...any) pgx.Row
}

func (s *Storage) CreateTX(ctx context.Context) error {
	tx, err := s.pgx.Begin(ctx)

	if err != nil {
		return errors.Wrapf(err, "Creeating Transaction")
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
		return errors.Wrap(err, "Rolling back tx didn't work out")
	}

	s.db = s.pgx
	return nil
}

func (s *Storage) CommitTX(ctx context.Context) error {
	if s.tx == nil {
		return errors.New("No tx started")
	}

	err := s.tx.Commit(ctx)
	if err != nil {
		return errors.Wrap(err, "Commiting tx didn't work out")
	}

	s.db = s.pgx
	return nil
}

func (s *Storage) Close() {
	s.pgx.Close()
}

type Storage struct {
	pgx *pgxpool.Pool
	tx  pgx.Tx
	db  DB

	Auth *auth.AuthStore

	Bible      *bible.BibleStore
	Plans      *plans.PlansStore
	Tracking   *tracking.TrackingStore
	Companions *companions.CompanionsStore
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
		return nil, nil, errors.Wrap(err, "Could not initialize pgx")
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
	}, pgx, nil
}

func (s *Storage) InitDB() error {

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql", "test_data/tracking_data.sql"}

	for _, file := range sqlFiles {
		path := "app/sql/" + file
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return errors.Wrapf(err, "error reading %s", file)
		}

		res, err := s.pgx.Exec(context.Background(), string(authSQL))
		if err != nil {
			return errors.Wrapf(err, "error initializing %s", file)
		}
		aff := res.RowsAffected()
		fmt.Printf("created %s tables, affected Rows: %v \n", file, aff)
	}

	return nil
}
