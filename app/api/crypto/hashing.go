// Package crypto deals with all things security. From Hashing Password to checking tokens.
package crypto

import (
	"crypto/rand"
	"encoding/base64"
	"fmt"
	"math/big"

	"github.com/pkg/errors"
	"github.com/rs/zerolog/log"
	"golang.org/x/crypto/bcrypt"
	"golang.org/x/crypto/sha3"
)

func HashPassword(pw string) ([]byte, error) {
	//todo: pepper
	hash, err := bcrypt.GenerateFromPassword([]byte(pw), bcrypt.DefaultCost)
	if err != nil {
		return nil, errors.Wrap(err, "hashing: Hash Password")
	}

	return hash, nil
}

func CheckPassword(pw string, hash []byte) bool {

	err := bcrypt.CompareHashAndPassword(hash, []byte(pw))
	b, _ := HashPassword(pw)
	log.Debug().Err(err).Bytes("pw", b).Msg("check password didnt work, should be")
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

func HashCode(code string) []byte {
	sh := sha3.Sum256([]byte(code))
	return sh[:]
}

func NewRandomHash() ([]byte, string) {
	b := make([]byte, 32)
	rand.Read(b) //error always empty

	readableToken := base64.RawURLEncoding.EncodeToString(b)
	sh := sha3.Sum256(b)

	return sh[:], readableToken
}

func NewRandomCode() ([]byte, string, error) {
	max := big.NewInt(999999)
	n, err := rand.Int(rand.Reader, max)
	if err != nil {
		return nil, "", errors.Wrapf(err, "token: New Random Code")
	}

	token := fmt.Sprintf("%06d", n.Int64())
	sh := HashCode(token)
	return sh[:], token, nil
}
