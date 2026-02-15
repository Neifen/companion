package storage

import (
	"reflect"
	"slices"
	"testing"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/storage/auth"
)

func TestNewUserModel(t *testing.T) {
	wantName := "testName"
	wantEmail := "my@email.com"
	unhashedPw := "testPw"

	hashedPw, err := crypto.HashPassword(unhashedPw)
	if err != nil {
		t.Fatalf("Could not hash pw: %s, error: %v\n", unhashedPw, err)
	}

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
	} else {
		t.Logf(`UID successful, was %s`, u.ID)
	}

	if !slices.Equal(u.Pw, hashedPw) {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.Name should be %q but was %q`, wantName, wantEmail, unhashedPw, hashedPw, u.Pw)
	}
}

func TestNewUserModelEmpty(t *testing.T) {
	wantName := ""
	wantEmail := ""
	unhashedPw := ""

	hashedPw, err := crypto.HashPassword(unhashedPw)
	if err != nil {
		t.Fatalf("Could not hash pw: %s, error: %+v\n", unhashedPw, err)
	}

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
	} else {
		t.Logf(`UID successful, was %s`, u.ID)
	}

	if !slices.Equal(u.Pw, hashedPw) {
		t.Errorf(`NewUserModel(%q, %q, %q). UserModel.Name should be %q but was %q`, wantName, wantEmail, unhashedPw, hashedPw, u.Pw)
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
