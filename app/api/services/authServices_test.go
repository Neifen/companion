package services_test

import (
	"fmt"
	"slices"
	"testing"
	"time"

	"github.com/neifen/htmx-login/app/api/storage/auth"
)

func TestCrudUser(t *testing.T) {
	s, db, err := newTestService()
	if err != nil {
		t.Fatalf("failed to create new test service with err \n%+v\n", err)
	}

	err = clearUsers(db)
	if err != nil {
		t.Fatalf("failed to clear users with err \n%+v\n", err)
	}

	u, err := auth.NewUserModel("name", "email", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = s.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	uResp, err := s.GetUserByEmail(t.Context(), "email")
	if err != nil {
		t.Errorf("failed to get User with err \n%+v\n", err)
	}

	if uResp.Email != u.Email || uResp.ID != u.ID || string(uResp.Pw) != string(u.Pw) {
		t.Errorf("expected user was %v, instead was %v", u, uResp)
	}

	if string(uResp.Pw) == "pass" {
		t.Errorf("expected pw should be hashed")
	}

	id := u.ID
	uResp, err = s.GetUserByID(t.Context(), id)
	if err != nil {
		t.Errorf("failed to get User with err \n%+v\n", err)
	}

	if uResp.Email != u.Email || uResp.ID != u.ID || string(uResp.Pw) != string(u.Pw) {
		t.Errorf("expected user was %v, instead was %v", u, uResp)
	}

	if string(uResp.Pw) == "pass" {
		t.Errorf("expected pw should be hashed")
	}

	t.Cleanup(func() {
		defer s.Close()

		err = clearUsers(db)
		if err != nil {
			t.Fatalf("failed to clear users with err \n%+v\n", err)
		}
	})

}

func TestCrudUserErrors(t *testing.T) {
	s, db, err := newTestService()
	if err != nil {
		t.Fatalf("failed to create new test service with err \n%+v\n", err)
	}

	err = clearUsers(db)
	if err != nil {
		t.Fatalf("failed to clear users with err \n%+v\n", err)
	}

	u, err := auth.NewUserModel("name", "email", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = s.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	// again
	u, err = auth.NewUserModel("othername", "email", "otherpass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = s.NewUser(t.Context(), u)
	if err == nil {
		//todo: check see error

		t.Fatalf("should have thrown an error for having the same email")
	}

	t.Cleanup(func() {
		defer s.Close()

		err = clearUsers(db)
		if err != nil {
			fmt.Printf("failed to clear users with err \n%+v\n", err)
		}
	})
}

func TestAuthentication(t *testing.T) {
	s, db, err := newTestService()
	if err != nil {
		t.Fatalf("failed to create new test service with err \n%+v\n", err)
	}

	err = clearUsers(db)
	if err != nil {
		t.Fatalf("failed to clear users with err \n%+v\n", err)
	}

	u, err := auth.NewUserModel("name", "email", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = s.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	uResp, err := s.Authenticate(t.Context(), "email", "pass", false)
	if err != nil {
		t.Errorf("failed to Authenticate with err %+v", err)
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

	uResp, err = s.Authenticate(t.Context(), "email", "pass", true)
	if err != nil {
		t.Errorf("failed to Authenticate with err %+v", err)
	}

	if !timeAlmostEqual(uResp.Refresh.Exp, time.Now().Add(time.Hour*40*24)) {
		t.Errorf("expected encrypted share token to expire in 40d, instead was %s", uResp.Access.Expiration)
	}

	uResp, err = s.Authenticate(t.Context(), "email2", "pass", false)
	if err == nil {
		t.Errorf("failed to produce error when authenticating with wrong email")
	}
	if uResp != nil {
		t.Errorf("failed to produce nil user when authenticating with wrong email")
	}

	uResp, err = s.Authenticate(t.Context(), "email", "pass2", false)
	if err == nil {
		t.Errorf("failed to produce error when authenticating with wrong pass")
	}
	if uResp != nil {
		t.Errorf("failed to produce nil user when authenticating with wrong pass")
	}

	t.Cleanup(func() {
		defer s.Close()

		err = clearUsers(db)
		if err != nil {
			fmt.Printf("failed to clear users with err \n%+v\n", err)
		}
	})
}

func TestRefreshToken(t *testing.T) {
	s, db, err := newTestService()
	if err != nil {
		t.Fatalf("failed to create new test service with err \n%+v\n", err)
	}

	err = clearUsers(db)
	if err != nil {
		t.Fatalf("failed to clear users with err \n%+v\n", err)
	}

	u, err := auth.NewUserModel("name", "email", "pass")
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	err = s.NewUser(t.Context(), u)
	if err != nil {
		t.Fatalf("failed to create user with err \n%+v\n", err)
	}

	auth, err := s.Authenticate(t.Context(), "email", "pass", false)
	if err != nil {
		t.Fatalf("failed to Authenticate with err %+v", err)
	}

	ref, err := s.RefreshToken(t.Context(), auth.Refresh.Token)
	if err != nil {
		t.Fatalf("failed to Refresh token err %+v", err)
	}

	if auth.User.ID != ref.User.ID {
		t.Errorf("expected Auth: %v and Refresh: %v users to be equal", auth.User, ref.User)
	}

	t.Cleanup(func() {
		err = clearUsers(db)
		if err != nil {
			fmt.Printf("failed to clear users with err \n%+v\n", err)
		}

		defer s.Close()
	})

}

// todo: test refresh token

func timeAlmostEqual(expected, actual time.Time) bool {
	return actual.After(expected.Add(-time.Second)) && actual.Before(expected.Add(time.Second))
}
