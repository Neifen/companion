package services_test

import (
	"context"
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"testing"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage"
	"github.com/rs/zerolog/log"
)

var testContext TestContext

type TestContext struct {
	db              *pgxpool.Pool
	serv            *services.Services
	resetPlans      bool
	resetTracking   bool
	resetAuth       bool
	resetCompanions bool
}

func TestMain(m *testing.M) {
	exitCode := doMain(m)
	os.Exit(exitCode)
}
func doMain(m *testing.M) int {
	log.Info().Msg("Start setting up tests")
	s, d, err := newTestService()
	if err != nil {
		log.Err(err).Msg("failed to create new test service with err")

		if s != nil {
			s.Close()
		}
		return 1
	}
	defer s.Close()

	testContext = TestContext{serv: s, db: d}

	exitCode := m.Run()

	log.Info().Msg("Tests done, clean up")

	if testContext.resetCompanions {
		err = clearCompanions()
		if err != nil {
			log.Err(err).Msg("failed to clear users with err")
			exitCode = 1
		}
	}

	if testContext.resetTracking {
		err = clearTrackers()
		if err != nil {
			log.Err(err).Msg("failed to clear users with err")
			exitCode = 1
		}
	}

	if testContext.resetPlans {
		err = clearPlans()
		if err != nil {
			log.Err(err).Msg("failed to clear users with err")
			exitCode = 1
		}
	}

	if testContext.resetAuth {
		err = clearUsers()
		if err != nil {
			log.Err(err).Msg("failed to clear users with err")
			exitCode = 1
		}

		err = clearIPTracking()
		if err != nil {
			log.Err(err).Msg("failed to clear iptracking with err")
			exitCode = 1
		}
	}

	return exitCode
}

func timeAlmostEqual(expected, actual time.Time) bool {
	return actual.After(expected.Add(-time.Second)) && actual.Before(expected.Add(time.Second))
}

const (
	defaultPlanID = 0
	defaultUserID = 0
)

func clearTrackers() error {
	res, err := testContext.db.Exec(context.Background(), "DELETE FROM tracking.trackers")
	if err != nil {
		return fmt.Errorf("Could not clean up Trackers table %w", err)
	}

	affected := res.RowsAffected()

	var count int
	row := testContext.db.QueryRow(context.Background(), "SELECT count(*) from tracking.tasks")
	row.Scan(&count)
	if count != 0 {
		return fmt.Errorf("tasks should be emty through delete cascade. Was %d instead", count)
	}

	log.Info().Int64("affected", affected).Msg("Tracker Rows cleaned up")
	return nil
}

func clearUsers() error {
	res, err := testContext.db.Exec(context.Background(), "DELETE FROM auth.users")
	if err != nil {
		return fmt.Errorf("Could not clean up users table %w", err)
	}

	affected := res.RowsAffected()
	var count int
	row := testContext.db.QueryRow(context.Background(), "SELECT count(*) from auth.refresh_tokens")
	row.Scan(&count)
	if count != 0 {
		return fmt.Errorf("refresh_tokens should be emty through delete cascade. Was %d instead", count)
	}

	row = testContext.db.QueryRow(context.Background(), "SELECT count(*) from auth.verification_tokens")
	row.Scan(&count)
	if count != 0 {
		return fmt.Errorf("verification_tokens table should be emty through delete cascade. Was %d instead", count)
	}

	log.Info().Int64("affected", affected).Msg("Auth Users Rows cleaned up")
	return nil
}

func clearIPTracking() error {
	res, err := testContext.db.Exec(context.Background(), "DELETE FROM auth.ip_tracking")
	if err != nil {
		return fmt.Errorf("Could not clean up users table %w", err)
	}

	affected := res.RowsAffected()
	log.Info().Int64("affected", affected).Msg("Auth IP Tracking Rows cleaned up")
	return nil
}

func clearCompanions() error {
	res, err := testContext.db.Exec(context.Background(), "DELETE FROM companions.companions")
	if err != nil {
		return fmt.Errorf("Could not clean up Plans table %w", err)
	}

	affected := res.RowsAffected()

	var count int
	row := testContext.db.QueryRow(context.Background(), "SELECT count(*) from companions.companion_items")
	row.Scan(&count)
	if count != 0 {
		return fmt.Errorf("companion items should be emty through delete cascade. Was %d instead", count)
	}

	row = testContext.db.QueryRow(context.Background(), "SELECT count(*) from companions.plan_companions")
	row.Scan(&count)
	if count != 0 {
		return fmt.Errorf("plan companion connection table should be emty through delete cascade. Was %d instead", count)
	}

	log.Info().Int64("affected", affected).Msg("Companion Rows cleaned up")
	return nil
}

func clearPlans() error {
	res, err := testContext.db.Exec(context.Background(), "DELETE FROM plans.plans where id != 0")
	if err != nil {
		return fmt.Errorf("Could not clean up Plans table %w", err)
	}

	affected := res.RowsAffected()

	log.Info().Int64("affected", affected).Msg("Plans Rows cleaned up")
	return nil
}

func getRelativePath(path string) string {
	// Get the directory of this test file
	_, filename, _, _ := runtime.Caller(0)
	dir := filepath.Dir(filename)

	return filepath.Join(dir, "../../..", path)
}

func loadEnv() error {
	envPath := getRelativePath(".env")
	log.Info().Str("Path", envPath).Msg("env path is")

	err := godotenv.Load(envPath)
	if err != nil {
		return fmt.Errorf("error 130: could not load .env %w", err)
	}
	return nil
}

func newTestService() (*services.Services, *pgxpool.Pool, error) {
	err := loadEnv()
	if err != nil {
		return nil, nil, err
	}

	os.Setenv("POSTGRES_DB", "testing")
	store, db, err := storage.NewDB()
	if err != nil {
		return nil, nil, fmt.Errorf("couldnt create new db %w", err)
	}

	sqlFiles := []string{"auth.sql", "chapters.sql", "verses.sql", "bible.sql", "plans.sql", "tracking.sql", "companions.sql", "data/bible_data.sql", "data/plans_data.sql", "data/companion_data.sql", "test_data/auth_test_data.sql"}

	err = execScripts(db, sqlFiles)
	if err != nil {
		return nil, nil, fmt.Errorf("couldnt exec script %w", err)
	}

	serv := services.NewTestServices(store, MockAuthServices{})
	return serv, db, nil
}

func execScripts(db *pgxpool.Pool, sqlFiles []string) error {
	for _, file := range sqlFiles {
		path := getRelativePath("app/sql/" + file)
		authSQL, err := os.ReadFile(path)
		if err != nil {
			return fmt.Errorf("error reading %s %w", file, err)
		}

		res, err := db.Exec(context.Background(), string(authSQL))
		if err != nil {
			return fmt.Errorf("error initializing %s %w", file, err)
		}
		aff := res.RowsAffected()
		log.Info().Str("file", file).Int64("affected", aff).Msg("created tables")
	}

	return nil
}
