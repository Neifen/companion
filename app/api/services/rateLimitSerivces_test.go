package services_test

import (
	"testing"

	"github.com/neifen/htmx-login/app/api/services"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/pkg/errors"
)

func Test_RateLimitAuthenticationShort(t *testing.T) {
	testContext.resetAuth = true
	email := "emailauth@test.ch"
	pw := "pass"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for i := 0; i < 6; i++ {
		a, err := testContext.serv.Authenticate(t.Context(), email, pw, "192.168.2.1", (i%2) == 0)
		if err != nil {
			t.Fatalf("authentication failed with error %+v", err)
		}

		if a == nil {
			t.Fatal("user was nil")
		}

		if a.User.Email != email {
			t.Fatalf("user email was supposed to be %s but was %s", email, a.User.Email)
		}
	}

	a, err := testContext.serv.Authenticate(t.Context(), email, pw, "192.168.2.1", false)
	if err == nil {
		t.Errorf("authentication was supposed to fail for 6th attempt with same ip")
	}
	if a != nil {
		t.Errorf("user was supposed to be nil but was %v", a)
	}
}

func Test_RateLimitSignupShort(t *testing.T) {
	testContext.resetAuth = true
	email := "emailshort@test.ch"
	pw := "pass"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for range 6 {
		err := testContext.serv.CheckShortVerificationToken(t.Context(), "192.168.2.2", email, shortVerificationToken)
		if err != nil {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	err = testContext.serv.CheckShortVerificationToken(t.Context(), "192.168.2.2", email, shortVerificationToken)
	if err == nil {
		t.Errorf("authentication was supposed to fail for 6th attempt with same ip")
	}
}

func Test_RateLimitSignupLong(t *testing.T) {
	testContext.resetAuth = true
	pw := "pass"
	ip := "192.168.2.3"

	u, err := auth.NewUserModel("nate", "emaillong@test.ch", pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for range 251 {
		err := testContext.serv.CheckLongVerificationToken(t.Context(), ip, longVerificationToken)
		if err != nil {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	err = testContext.serv.CheckLongVerificationToken(t.Context(), ip, longVerificationToken)
	if err == nil {
		t.Errorf("authentication was supposed to fail for 201th attempt with same ip")
	}
}

func Test_RateLimitResetPwShort(t *testing.T) {
	testContext.resetAuth = true
	email := "emailresetshort@test.ch"
	pw := "pass"
	ip := "192.168.2.4"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.RequestResetPassword(t.Context(), ip, email); err != nil {
		t.Fatalf("request reset password failed with err %+v", err)
	}

	for range 5 {
		err := testContext.serv.ResetPasswordShort(t.Context(), ip, email, shortVerificationToken, "newPw")
		if err != nil {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	err = testContext.serv.ResetPasswordShort(t.Context(), ip, email, shortVerificationToken, "newPw")
	if err == nil {
		t.Errorf("authentication was supposed to fail for 6th attempt with same ip")
	}
}

func Test_RateLimitResetPwLong(t *testing.T) {
	testContext.resetAuth = true
	email := "emailresetlong@test.ch"
	pw := "pass"
	ip := "192.168.2.5"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for range 251 {
		err := testContext.serv.ResetPasswordLong(t.Context(), ip, "wrongOnPurpose", "newpw")
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("%v authentication exp %+v", errors.As(err, &services.ErrIPRateLimit), err)
		}
	}

	err = testContext.serv.ResetPasswordLong(t.Context(), ip, longVerificationToken, "newpw")
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 201th attempt with same ip")
	}
}
