package main

import (
	"context"
	"fmt"
	"os"
	"time"

	"github.com/joho/godotenv"
	"github.com/neifen/companion/app/api/server"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
)

func main() {
	if err := run(); err != nil {
		log.Fatal().Err(err).Msg("Run failed")
	}
}

func run() error {
	// if I want it even faster
	// zerolog.TimeFieldFormat = zerolog.TimeFormatUnix
	// Pretty console writer
	output := zerolog.ConsoleWriter{
		Out:        os.Stdout,
		TimeFormat: time.RFC3339,
	}

	log.Logger = zerolog.New(output).
		With().
		Timestamp().
		Logger()

	// 1. load env variable
	err := loadEnv()
	if err != nil {
		return err
	}

	store, _, err := storage.NewDB()
	if err != nil {
		return err
	}
	defer store.Close()

	err = store.InitDB()
	if err != nil {
		// need to be able to set up db, otherwise fail
		log.Fatal().Err(err).Msg("failed to init db")
	}
	services := services.NewServicesProd(store)
	services.InsertSplitVersesPlan(context.Background()) //todo: move or remove, put it somwehre idk

	api := server.NewAPIHandler(":1323", services)
	api.Run()
	return nil
}

func loadEnv() error {
	err := godotenv.Load(".env")
	if err == nil {
		return nil
	}

	err = godotenv.Load("/run/secrets/dot-env")
	if err != nil {
		return fmt.Errorf("error loading secret .env file %w", err)
	}

	return nil
}
