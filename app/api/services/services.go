package services

import (
	"github.com/neifen/htmx-login/app/api/storage"
)

func (s *Services) Close() {
	s.store.Close()
}

type Services struct {
	store *storage.Storage
}

func NewServices(store *storage.Storage) *Services {
	return &Services{store: store}
}
