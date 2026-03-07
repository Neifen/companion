package services

import (
	"testing"

	"github.com/neifen/companion/app/api/storage/auth"
)

func Test_Mail(t *testing.T) {
	short := "short"
	long := "verylongstringwith1243numbers"
	u := &auth.UserModel{Name: "Nate", Email: "neifen.b@gmail.com"}

	err := sendSignupMail(short, long, u, auth.PurposeSignup)

	if err != nil {
		t.Fatalf("Failed to send mail with err \n%+v\n", err)
	}
}
