package services_test

import (
	"fmt"
	"testing"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/api/services"
	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/pkg/errors"
)

func Test_RateLimitAuthenticationShort(t *testing.T) {
	testContext.resetAuth = true
	email := "emailauth@test.ch"
	pw := "pass"
	ip := "192.168.2.1"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for i := range 9 {
		a, err := testContext.serv.Authenticate(t.Context(), ip, email, pw, (i%2) == 0)
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

	a, err := testContext.serv.Authenticate(t.Context(), ip, email, pw, false)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 6th attempt with same ip")
	}
	if a != nil {
		t.Errorf("user was supposed to be nil but was %v", a)
	}
}

func Test_RateLimitAuthenticationRotating(t *testing.T) {
	testContext.resetAuth = true
	email := "emailauthrotate@test.ch"
	pw := "pass"
	ip := "192.168.2.2"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for i := range 399 {
		_, err := testContext.serv.Authenticate(t.Context(), ip, fmt.Sprintf("%s%d", email, i), pw, (i%2) == 0)
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	a, err := testContext.serv.Authenticate(t.Context(), ip, email, pw, false)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 499th attempt with same ip")
	}
	if a != nil {
		t.Errorf("user was supposed to be nil but was %v", a)
	}
}

func Test_RateLimitSignupShort(t *testing.T) {
	testContext.resetAuth = true
	email := "emailshort@test.ch"
	pw := "pass"
	ip := "192.168.2.3"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for range 6 {
		err := testContext.serv.CheckShortVerificationToken(t.Context(), ip, email, shortVerificationToken)
		if err != nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	err = testContext.serv.CheckShortVerificationToken(t.Context(), ip, email, shortVerificationToken)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 6th attempt with same ip")
	}
}

func Test_RateLimitSignupShort_Rotating(t *testing.T) {
	testContext.resetAuth = true
	email := "emailshortrot@test.ch"
	pw := "pass"
	ip := "192.168.2.4"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for i := range 249 {
		err := testContext.serv.CheckShortVerificationToken(t.Context(), ip, fmt.Sprintf("%d%s", i, email), shortVerificationToken)
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication exp %+v", err)
		}
	}

	err = testContext.serv.CheckShortVerificationToken(t.Context(), ip, email, shortVerificationToken)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 251th attempt with same ip err: %v", err)
	}
}

func Test_RateLimitSignupLong(t *testing.T) {
	testContext.resetAuth = true
	pw := "pass"
	ip := "192.168.2.5"

	u, err := auth.NewUserModel("nate", "emaillong@test.ch", pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for range 249 {
		err := testContext.serv.CheckLongVerificationToken(t.Context(), ip, longVerificationToken)
		if err != nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	err = testContext.serv.CheckLongVerificationToken(t.Context(), ip, longVerificationToken)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 251th attempt with same ip")
	}
}

func Test_RateLimitResetPwShort(t *testing.T) {
	testContext.resetAuth = true
	email := "emailresetshort@test.ch"
	pw := "pass"
	ip := "192.168.2.6"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.RequestResetPassword(t.Context(), ip, email); err != nil {
		t.Fatalf("request reset password failed with err %+v", err)
	}

	for range 6 {
		err := testContext.serv.ResetPasswordShort(t.Context(), ip, email, shortVerificationToken, "newPw")
		if err != nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	err = testContext.serv.ResetPasswordShort(t.Context(), ip, email, shortVerificationToken, "newPw")
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 6th attempt with same ip")
	}
}

func Test_RateLimitResetPwShort_Rotating(t *testing.T) {
	testContext.resetAuth = true
	email := "emailresetshortrot@test.ch"
	pw := "pass"
	ip := "192.168.2.7"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.RequestResetPassword(t.Context(), ip, email); err != nil {
		t.Fatalf("request reset password failed with err %+v", err)
	}

	for i := range 249 {
		err := testContext.serv.ResetPasswordShort(t.Context(), ip, fmt.Sprintf("%d%s", i, email), shortVerificationToken, "newPw")
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication exp %+v", err)
		}
	}

	err = testContext.serv.ResetPasswordShort(t.Context(), ip, email, shortVerificationToken, "newPw")
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 251th attempt with same ip err: %v", err)
	}
}

func Test_RateLimitResetPwLong(t *testing.T) {
	testContext.resetAuth = true
	email := "emailresetlong@test.ch"
	pw := "pass"
	ip := "192.168.2.8"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for range 249 {
		err := testContext.serv.ResetPasswordLong(t.Context(), ip, "wrongOnPurpose", "newpw")
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication exp %+v", err)
		}
	}

	err = testContext.serv.ResetPasswordLong(t.Context(), ip, longVerificationToken, "newpw")
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 251th attempt with same ip")
	}
}

func Test_WaitTimeout_Reset(t *testing.T) {
	testContext.resetAuth = true
	email := "emailresetreq@test.ch"
	pw := "pass"
	ip := "192.168.2.9"
	ctx := t.Context()

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(ctx, ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	err = testContext.serv.RequestResetPassword(ctx, ip, email)
	if err != nil {
		t.Fatalf("authentication failed with error %+v", err)
	}

	err = testContext.serv.RequestResetPassword(ctx, ip, email)
	if err == nil || !errors.Is(err, services.ErrWaitTimeout) {
		t.Errorf("authentication was supposed to fail for second password reset request in 5mins")
	}
}

func Test_RateLimitRequestReset_Rotating(t *testing.T) {
	testContext.resetAuth = true
	email := "emailresetreqrotate@test.ch"
	pw := "pass"
	ip := "192.168.2.10"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for i := range 199 {
		err = testContext.serv.RequestResetPassword(t.Context(), ip, fmt.Sprintf("%s%d", email, i))
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("authentication failed with error %+v", err)
		}
	}

	err = testContext.serv.RequestResetPassword(t.Context(), ip, email)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("authentication was supposed to fail for 6th attempt with same ip")
	}
}

func Test_RateLimitRefresh(t *testing.T) {
	testContext.resetAuth = true
	email := "emailrefresh@test.ch"
	pw := "pass"
	ip := "192.168.2.11"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("refresh failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(t.Context(), ip, u); err != nil {
		t.Fatalf("refresh failed with error %+v", err)
	}

	a, err := testContext.serv.Authenticate(t.Context(), ip, email, pw, false)
	if err != nil {
		t.Fatalf("refresh failed with error %+v", err)
	}

	for range 199 {
		_, err = testContext.serv.RefreshToken(t.Context(), ip, "false")
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Fatalf("refresh was supposed to fail for wrong token %+v", err)
		}
	}

	refresh := a.Refresh.Token
	_, err = testContext.serv.RefreshToken(t.Context(), ip, refresh)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("refresh was supposed to fail for 250th attempt with same ip")
	}
}

func Test_RateLimitNewUser(t *testing.T) {
	testContext.resetAuth = true
	email := "emailnewuser@test.ch"
	pw := "pass"
	ip := "192.168.2.12"

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new user failed with error %+v", err)
	}

	for i := range 199 {
		u.ID = uuid.New()
		u.Email = fmt.Sprintf("%s%d", email, i)
		err = testContext.serv.NewUser(t.Context(), ip, u)
		if err != nil {
			t.Fatalf("new user failed with error %+v", err)
		}
	}

	u.ID = uuid.New()
	u.Email = email
	err = testContext.serv.NewUser(t.Context(), ip, u)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("new user was supposed to fail for 200th attempt with same ip")
	}
}

func Test_WaitTimeout_Signup(t *testing.T) {
	testContext.resetAuth = true
	email := "signuptimeout@test.ch"
	pw := "pass"
	ip := "192.168.2.13"
	ctx := t.Context()

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	if err := testContext.serv.NewUser(ctx, ip, u); err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	err = testContext.serv.RequestSignupVerificationTokens(ctx, ip, u)
	if err == nil || !errors.Is(err, services.ErrWaitTimeout) {
		t.Errorf("request signup verification token was supposed to fail for second password reset request in 5mins")
	}
}

func Test_Signup_Rotate(t *testing.T) {
	testContext.resetAuth = true
	email := "signuprotateemail@test.ch"
	pw := "pass"
	ip := "192.168.2.14"
	ctx := t.Context()

	u, err := auth.NewUserModel("nate", email, pw)
	if err != nil {
		t.Fatalf("new User failed with error %+v", err)
	}

	for i := range 99 {
		u.Email = fmt.Sprintf("%s%d", email, i)
		err = testContext.serv.RequestSignupVerificationTokens(t.Context(), ip, u)
		if err == nil || errors.Is(err, services.ErrIPRateLimit) {
			t.Errorf("request signup verification token was supposed to fail but didn't or with wrong error %+v", err)
		}
	}

	u.Email = email
	err = testContext.serv.RequestSignupVerificationTokens(ctx, ip, u)
	if err == nil || !errors.Is(err, services.ErrIPRateLimit) {
		t.Errorf("request signup verification token was supposed to fail for second password reset request in 5mins")
	}
}
