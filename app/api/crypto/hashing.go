// Package crypto deals with all things security. From Hashing Password to checking tokens.
package crypto

import (
	"github.com/pkg/errors"
	"golang.org/x/crypto/sha3"
)

func HashPassword(pw string) ([]byte, error) {
	sh := sha3.New256()
	_, err := sh.Write([]byte(pw))
	if err != nil {
		return nil, errors.Wrap(err, "crypto: Hash Password")
	}

	return sh.Sum(nil), nil
}
