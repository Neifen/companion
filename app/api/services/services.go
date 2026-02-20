package services

import (
	"github.com/neifen/htmx-login/app/api/storage"
)

// Close DO NOT CALL THIS OTHER THAN AT END OF TEST OR MAIN
func (s *Services) Close() {
	s.store.Close()
}

type Services struct {
	store *storage.Storage
	auth  AuthServices
}

func NewServicesProd(store *storage.Storage) *Services {
	return &Services{store: store, auth: ProductionAuthServices{}}
}

func NewTestServices(store *storage.Storage, auth AuthServices) *Services {
	return &Services{store: store, auth: auth}
}
