// Package crypto deals with all things security. From Hashing Password to checking tokens.
package crypto

import (
	"crypto/rand"
	"encoding/base64"

	"github.com/pkg/errors"
	"golang.org/x/crypto/bcrypt"
	"golang.org/x/crypto/sha3"
)

func HashPassword(pw string) ([]byte, error) {
	//todo: chat says this is not enough. it should be salted hasing
	hash, err := bcrypt.GenerateFromPassword([]byte(pw), bcrypt.DefaultCost)
	if err != nil {
		return nil, errors.Wrap(err, "hashing: Hash Password")
	}

	return hash, nil
}

func CheckPassword(pw string, hash []byte) bool {

	err := bcrypt.CompareHashAndPassword(hash, []byte(pw))
	return err == nil
}

func HashToken(token string) ([]byte, error) {
	b, err := base64.RawURLEncoding.DecodeString(token)
	if err != nil {
		return nil, errors.Wrapf(err, "token: Hash token")
	}

	sh := sha3.Sum256(b)
	return sh[:], nil
}

func NewRandomHash() ([]byte, string) {
	b := make([]byte, 32)
	rand.Read(b) //error always empty

	readableToken := base64.RawURLEncoding.EncodeToString(b)
	sh := sha3.Sum256(b)

	return sh[:], readableToken
}
