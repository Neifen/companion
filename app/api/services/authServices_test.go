package services_test

import (
	"fmt"
	"os"
	"slices"
	"testing"
	"time"

	"github.com/neifen/htmx-login/app/api/services"
	"github.com/neifen/htmx-login/app/api/storage/auth"
)

func TestCrudUser(t *testing.T) {
	u, err := auth.NewUserModel("name", "email@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	uResp, err := serv.GetUserByEmail(t.Context(), "email@nate.ch")
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
	uResp, err = serv.GetUserByID(t.Context(), id)
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
	u, err := auth.NewUserModel("name", "emailCrudErr@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	// again
	u, err = auth.NewUserModel("othername", "emailCrudErr@nate.ch", "otherpass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = serv.NewUser(t.Context(), u)
	if err == nil {
		t.Fatalf("should have thrown an error for having the same email")
	}

	//bad email
	u, err = auth.NewUserModel("othername", "emailCrudErr", "otherpass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = serv.NewUser(t.Context(), u)
	if err == nil {
		t.Fatalf("should have thrown an error for having an email that is not an email")
	}
}

func TestAuthentication(t *testing.T) {
	u, err := auth.NewUserModel("name", "emailAuth@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	uResp, err := serv.Authenticate(t.Context(), "emailAuth@nate.ch", "pass", false)
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

	uResp, err = serv.Authenticate(t.Context(), "emailAuth@nate.ch", "pass", true)
	if err != nil {
		t.Fatalf("failed to Authenticate with err %+v", err)
	}

	if !timeAlmostEqual(uResp.Refresh.Exp, time.Now().Add(time.Hour*40*24)) {
		t.Errorf("expected encrypted share token to expire in 40d, instead was %s", uResp.Access.Expiration)
	}

	uResp, err = serv.Authenticate(t.Context(), "emaillAuth@nate.ch", "pass", false)
	if err == nil {
		t.Errorf("failed to produce error when authenticating with wrong email")
	}
	if uResp != nil {
		t.Errorf("failed to produce nil user when authenticating with wrong email")
	}

	uResp, err = serv.Authenticate(t.Context(), "emailAuth@nate.ch", "pass2", false)
	if err == nil {
		t.Errorf("failed to produce error when authenticating with wrong pass")
	}
	if uResp != nil {
		t.Errorf("failed to produce nil user when authenticating with wrong pass")
	}
}

func TestRefreshToken(t *testing.T) {
	u, err := auth.NewUserModel("name", "emailRefresh@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	auth, err := serv.Authenticate(t.Context(), "emailRefresh@nate.ch", "pass", false)
	if err != nil {
		t.Fatalf("failed to Authenticate with err %+v", err)
	}

	ref, err := serv.RefreshToken(t.Context(), auth.Refresh.Token)
	if err != nil {
		t.Fatalf("failed to Refresh token err %+v", err)
	}

	if auth.User.ID != ref.User.ID {
		t.Errorf("expected Auth: %v and Refresh: %v users to be equal", auth.User, ref.User)
	}
}

func Test_SignupVerification(t *testing.T) {
	u, err := auth.NewUserModel("name", "emailverify@nate.ch", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = serv.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	//todo: test verification actually
	//todo: add account state: UNVERIFIED, VERIFIED, SUSPENDED, DELETED

}

var serv *services.Services

func TestMain(m *testing.M) {
	exitCode := doMain(m)
	os.Exit(exitCode)
}
func doMain(m *testing.M) int {
	fmt.Println("Start setting up tests")
	s, db, err := newTestService()
	if err != nil {
		fmt.Printf("failed to create new test service with err \n%+v\n", err)

		if s != nil {
			s.Close()
		}
		return 1
	}
	defer s.Close()
	serv = s

	err = clearUsers(db)
	if err != nil {
		fmt.Printf("failed to clear users with err \n%+v\n", err)
		return 1
	}

	exitCode := m.Run()

	fmt.Println("Tests done, clean up")
	err = clearUsers(db)
	if err != nil {
		fmt.Printf("failed to clear users with err \n%+v\n", err)
		return 1
	}

	return exitCode
}

func timeAlmostEqual(expected, actual time.Time) bool {
	return actual.After(expected.Add(-time.Second)) && actual.Before(expected.Add(time.Second))
}
