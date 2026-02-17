// Package crypto deals with all things security. From Hashing Password to checking tokens.
package crypto

import (
	"crypto/rand"
	"encoding/base64"

	"github.com/pkg/errors"
	"golang.org/x/crypto/sha3"
)

func HashPassword(pw string) []byte {
	//todo: chat says this is not enough. it should be salted hasing
	hash := sha3.Sum256([]byte(pw))
	return hash[:]
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
