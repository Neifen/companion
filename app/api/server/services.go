package server

import (
	// "crypto"
	"bytes"

	"github.com/neifen/htmx-login/app/api/crypto"
)

func (s *HandlerSession) Authenticate(email, pw string) *userReq {

	u, err := s.store.Auth.ReadUserByEmail(email)
	if err != nil {
		return emptyUser()
	}

	pwHash, err := crypto.HashPassword(pw)
	if err != nil {
		return emptyUser()
	}

	if bytes.Equal(pwHash, u.Pw) {
		userReq := userFromModel(u)
		return userReq
	}

	return emptyUser()
}
