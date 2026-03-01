package main

import (
	"github.com/joho/godotenv"
	"github.com/neifen/companion/app/api/server"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage"
	"github.com/pkg/errors"
	"github.com/rs/zerolog/log"
)

func main() {
	// if I want it even faster
	// zerolog.TimeFieldFormat = zerolog.TimeFormatUnix

	// 1. load env variable
	err := loadEnv()
	if err != nil {
		log.Fatal().Err(err).Msg("failed to load environment variables")
	}

	store, _, err := storage.NewDB()
	if err != nil {
		// need to be able to set up db, otherwise fail
		log.Err(err)
	}
	defer store.Close()

	err = store.InitDB()
	if err != nil {
		// need to be able to set up db, otherwise fail
		log.Fatal().Err(err).Msg("failed to init db")
	}

	services := services.NewServicesProd(store)
	api := server.NewAPIHandler(":1323", services)
	api.Run()
}

func loadEnv() error {
	err := godotenv.Load(".env")
	if err == nil {
		return nil
	}

	err = godotenv.Load("/run/secrets/dot-env")
	if err != nil {
		return errors.Wrap(err, "error loading secret .env file")
	}

	return nil
}
