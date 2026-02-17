package main

import (
	"errors"
	"log"

	"github.com/joho/godotenv"
	"github.com/neifen/htmx-login/app/api/server"
	"github.com/neifen/htmx-login/app/api/services"
	"github.com/neifen/htmx-login/app/api/storage"
)

func main() {
	// 1. load env variable
	err := loadEnv()
	if err != nil {
		log.Fatal(err)
	}

	store, _, err := storage.NewDB()
	if err != nil {
		// need to be able to set up db, otherwise fail
		log.Fatal(err)
	}
	defer store.Close()

	err = store.InitDB()
	if err != nil {
		// need to be able to set up db, otherwise fail
		log.Fatalf("error Initializing: %+v", err)
	}

	services := services.NewServices(store)
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
		return errors.New("error loading secret .env file")
	}

	return nil
}
