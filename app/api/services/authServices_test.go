package services_test

import (
	"slices"
	"testing"
	"time"

	"github.com/neifen/htmx-login/app/api/storage/auth"
)

type MockAuthServices struct{}

var longVerificationToken string
var shortVerificationToken string

func (MockAuthServices) SendVerification(shortToken, longToken string, u *auth.UserModel) {
	longVerificationToken = longToken
	shortVerificationToken = shortToken
}

func TestCrudUser(t *testing.T) {
	testContext.resetAuth = true

	u, err := auth.NewUserModel("name", "email@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	uResp, err := testContext.serv.GetUserByEmail(t.Context(), "email@nate.ch")
	if err != nil {
		t.Fatalf("failed to get User with err \n%+v\n", err)
	}

	if uResp.Email != u.Email || uResp.ID != u.ID || string(uResp.Pw) != string(u.Pw) {
		t.Errorf("expected user was %v, instead was %v", u, uResp)
	}

	if string(uResp.Pw) == "pass" {
		t.Errorf("expected pw should be hashed")
	}

	id := u.ID
	uResp, err = testContext.serv.GetUserByID(t.Context(), id)
	if err != nil {
		t.Errorf("failed to get User with err \n%+v\n", err)
	}

	if uResp.Email != u.Email || uResp.ID != u.ID || string(uResp.Pw) != string(u.Pw) {
		t.Errorf("expected user was %v, instead was %v", u, uResp)
	}

	if string(uResp.Pw) == "pass" {
		t.Errorf("expected pw should be hashed")
	}
}

func TestCrudUserErrors(t *testing.T) {
	testContext.resetAuth = true

	u, err := auth.NewUserModel("name", "emailCrudErr@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	// again
	u, err = auth.NewUserModel("othername", "emailCrudErr@nate.ch", "otherpass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err == nil {
		t.Fatalf("should have thrown an error for having the same email")
	}

	//bad email
	u, err = auth.NewUserModel("othername", "emailCrudErr", "otherpass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err == nil {
		t.Fatalf("should have thrown an error for having an email that is not an email")
	}
}

func TestAuthentication(t *testing.T) {
	testContext.resetAuth = true

	u, err := auth.NewUserModel("name", "emailAuth@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	uResp, err := testContext.serv.Authenticate(t.Context(), "emailAuth@nate.ch", "pass", "192.168.1.1", false)
	if err != nil {
		t.Fatalf("failed to Authenticate with err %+v", err)
	}

	if uResp.User.Email != u.Email || uResp.User.ID != u.ID || string(uResp.User.Pw) != string(u.Pw) {
		t.Errorf("expected user was %v, instead was %v", u, uResp)
	}

	tokenUID, err := uResp.Access.UserID()
	if err != nil {
		t.Errorf("failed to get UserID from token with err %+v", err)
	}

	if tokenUID != u.ID {
		t.Errorf("expected token UID was %v, instead was %v", u.ID, tokenUID)
	}

	if uResp.Access.Encrypted == "" {
		t.Errorf("expected encrypted access token to be filled, instead was %s", uResp.Access.Encrypted)
	}

	if !timeAlmostEqual(uResp.Access.Expiration, time.Now().Add(time.Hour*2)) {
		t.Errorf("expected encrypted access token to expire in 2h, instead was %s", uResp.Access.Expiration)
	}

	if uResp.Refresh.Token == "" {
		t.Errorf("expected token to be filled but was %s", uResp.Refresh.Token)
	}

	if !slices.Equal(uResp.Refresh.Hashed, make([]byte, 32)) {
		t.Errorf("expected Hashed Refreshtoken to be clean and empty but wasn't")
	}

	if !timeAlmostEqual(uResp.Refresh.Exp, time.Now().Add(time.Hour*7*24)) {
		t.Errorf("expected encrypted share token to expire in 7d, instead was %s", uResp.Access.Expiration)
	}

	uResp, err = testContext.serv.Authenticate(t.Context(), "emailAuth@nate.ch", "pass", "192.168.1.2", true)
	if err != nil {
		t.Fatalf("failed to Authenticate with err %+v", err)
	}

	if !timeAlmostEqual(uResp.Refresh.Exp, time.Now().Add(time.Hour*40*24)) {
		t.Errorf("expected encrypted share token to expire in 40d, instead was %s", uResp.Access.Expiration)
	}

	uResp, err = testContext.serv.Authenticate(t.Context(), "emaillAuth@nate.ch", "pass", "192.168.1.3", false)
	if err == nil {
		t.Errorf("failed to produce error when authenticating with wrong email")
	}
	if uResp != nil {
		t.Errorf("failed to produce nil user when authenticating with wrong email")
	}

	uResp, err = testContext.serv.Authenticate(t.Context(), "emailAuth@nate.ch", "pass2", "192.168.1.4", false)
	if err == nil {
		t.Errorf("failed to produce error when authenticating with wrong pass")
	}
	if uResp != nil {
		t.Errorf("failed to produce nil user when authenticating with wrong pass")
	}
}

func TestRefreshToken(t *testing.T) {
	testContext.resetAuth = true

	u, err := auth.NewUserModel("name", "emailRefresh@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	auth, err := testContext.serv.Authenticate(t.Context(), "emailRefresh@nate.ch", "pass", "192.168.1.5", false)
	if err != nil {
		t.Fatalf("failed to Authenticate with err %+v", err)
	}

	ref, err := testContext.serv.RefreshToken(t.Context(), auth.Refresh.Token)
	if err != nil {
		t.Fatalf("failed to Refresh token err %+v", err)
	}

	if auth.User.ID != ref.User.ID {
		t.Errorf("expected Auth: %v and Refresh: %v users to be equal", auth.User, ref.User)
	}
}

func Test_ShortSignupVerification(t *testing.T) {
	testContext.resetAuth = true

	email := "shortverify@nate.ch"
	u, err := auth.NewUserModel("name", email, "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.CheckShortVerificationToken(t.Context(), "192.168.1.1", email, shortVerificationToken)
	if err != nil {
		t.Errorf("failed to check Verification with token %s and err \n%+v\n", shortVerificationToken, err)
	}
	//todo: add account state: UNVERIFIED, VERIFIED, SUSPENDED, DELETED
}

func Test_LongSignupVerification(t *testing.T) {
	testContext.resetAuth = true
	u, err := auth.NewUserModel("name", "longsignup@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.CheckLongVerificationToken(t.Context(), "192.168.1.2", longVerificationToken)
	if err != nil {
		t.Errorf("failed to check Verification with token %s and err \n%+v\n", longVerificationToken, err)
	}
	//todo: add account state: UNVERIFIED, VERIFIED, SUSPENDED, DELETED
}

func Test_ResetPw(t *testing.T) {
	testContext.resetAuth = true
	u, err := auth.NewUserModel("name", "resetpw@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = testContext.serv.RequestResetPassword(t.Context(), "192.168.1.11", "resetPw@nate.ch")
	if err != nil {
		t.Errorf("failed to check Verification with token %s and err \n%+v\n", longVerificationToken, err)
	}

	err = testContext.serv.ResetPasswordLong(t.Context(), "192.168.1.11", longVerificationToken, "newpass")
	if err != nil {
		t.Errorf("failed to check Verification with token %s and err \n%+v\n", longVerificationToken, err)
	}

	err = testContext.serv.ResetPasswordShort(t.Context(), "192.168.1.11", shortVerificationToken, u.Email, "newpass2")
	if err != nil {
		t.Errorf("failed to check Verification with token %s and err \n%+v\n", shortVerificationToken, err)
	}

	res, err := testContext.serv.Authenticate(t.Context(), "resetPw@nate.ch", "newpass2", "192.168.1.13", true)
	if err != nil {
		t.Errorf("failed to authenticate with new pw %s and err \n%+v\n", "newpass2", err)
	}

	if res.User.ID != u.ID {
		t.Errorf("expected user to be %s but was %s", u.ID, res.User.ID)
	}
}
