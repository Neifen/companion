package services_test

import (
	"fmt"
	"testing"

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

	uResp, err := s.Authenticate(t.Context(), "email", "pass")
	if err != nil {
		t.Errorf("failed to Authenticate with err \n%+v\n", err)
	}
	if uResp.Email != u.Email || uResp.ID != u.ID || string(uResp.Pw) != string(u.Pw) {
		t.Errorf("expected user was %v, instead was %v", u, uResp)
	}

	uResp, err = s.Authenticate(t.Context(), "email2", "pass")
	if err == nil {
		t.Errorf("failed to produce error when authenticating with wrong email")
	}
	if uResp != nil {
		t.Errorf("failed to produce nil user when authenticating with wrong email")
	}

	uResp, err = s.Authenticate(t.Context(), "email", "pass2")
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
