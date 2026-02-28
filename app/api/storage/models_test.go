package storage

import (
	"reflect"
	"testing"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/api/crypto"
	"github.com/neifen/companion/app/api/storage/auth"
)

func TestNewUserModel(t *testing.T) {
	wantName := "testName"
	wantEmail := "my@email.com"
	unhashedPw := "testPw"

	u, err := auth.NewUserModel(wantName, wantEmail, unhashedPw)
	if err != nil {
		t.Fatalf("error: %+v", err)
	}

	if u.Name != wantName {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.Name should be %q but was %q`, wantName, wantEmail, unhashedPw, wantName, u.Name)
	}

	if u.Email != wantEmail {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.Email should be %q but was %q`, wantName, wantEmail, unhashedPw, wantEmail, u.Email)
	}

	if u.ID == uuid.Nil {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.UID was empty`, wantName, wantEmail, unhashedPw)
	}

	if !crypto.CheckPassword(unhashedPw, u.Pw) {
		t.Error("Failed to Check password")
	}
}

func TestNewUserModelEmpty(t *testing.T) {
	wantName := ""
	wantEmail := ""
	unhashedPw := ""

	u, err := auth.NewUserModel(wantName, wantEmail, unhashedPw)
	if err != nil {
		t.Fatalf("error: %+v]n", err)
	}

	if u.Name != wantName {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.Name should be %q but was %q`, wantName, wantEmail, unhashedPw, wantName, u.Name)
	}

	if u.Email != wantEmail {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.Email should be %q but was %q`, wantName, wantEmail, unhashedPw, wantEmail, u.Email)
	}

	if u.ID == uuid.Nil {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.UID was empty`, wantName, wantEmail, unhashedPw)
	}

	if !crypto.CheckPassword(unhashedPw, u.Pw) {
		t.Error("Failed to Check password")
	}
}

func TestNewRefreshTokenModel(t *testing.T) {
	UID := uuid.New()
	token := "testToken"
	exp := time.Now()
	remember := true

	wantTokenModel := &auth.RefreshTokenModel{UserUID: UID, Token: token, Expiration: exp, Remember: remember}

	tokenModel := auth.NewRefreshTokenModel(UID, token, exp, remember)

	if !reflect.DeepEqual(tokenModel, wantTokenModel) {
		t.Errorf(`auth.NewRefreshTokenModel(%s, %q, %q). UserModel.Name should be %+v but was %+v`, UID, token, exp, wantTokenModel, tokenModel)
	}
}

func TestNewRefreshTokenModelEmpty(t *testing.T) {
	UID := uuid.Nil
	token := ""
	exp := time.Now()

	wantTokenModel := &auth.RefreshTokenModel{UserUID: UID, Token: token, Expiration: exp}

	tokenModel := auth.NewRefreshTokenModel(UID, token, exp, false)

	if !reflect.DeepEqual(tokenModel, wantTokenModel) {
		t.Errorf(`auth.NewRefreshTokenModel(%q, %q, %q). UserModel.Name should be %+v but was %+v`, UID, token, exp, wantTokenModel, tokenModel)
	}
}
