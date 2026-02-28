package crypto

import (
	"testing"

	"golang.org/x/crypto/bcrypt"
)

func TestHashPassword(t *testing.T) {
	inputPw := "anything"

	pw, err := HashPassword(inputPw)
	if err != nil {
		t.Fatalf("Hashing failed %+v", err)
	}

	err = bcrypt.CompareHashAndPassword(pw, []byte(inputPw))
	if err != nil {
		t.Fatalf("error with comparing pw: \n%+v\n", err)
	}
}

func TestHashPasswordEmpty(t *testing.T) {
	inputPw := ""

	pw, err := HashPassword(inputPw)
	if err != nil {
		t.Fatalf("Hashing failed %+v", err)
	}

	err = bcrypt.CompareHashAndPassword(pw, []byte(inputPw))
	if err != nil {
		t.Fatalf("error with comparing pw: \n%+v\n", err)
	}
}

func TestHashPasswordEmojis(t *testing.T) {
	inputPw := "♥◘♣○╗ß"

	pw, err := HashPassword(inputPw)
	if err != nil {
		t.Fatalf("Hashing failed %+v", err)
	}

	err = bcrypt.CompareHashAndPassword(pw, []byte(inputPw))
	if err != nil {
		t.Fatalf("error with comparing pw: \n%+v\n", err)
	}
}
