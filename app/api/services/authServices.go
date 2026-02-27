package services

import (
	"context"
	"fmt"
	"net/mail"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/neifen/htmx-login/app/api/storage/iptracking"
	"github.com/pkg/errors"
)

type AuthServices interface {
	SendVerification(shortToken, longToken string, u *auth.UserModel)
}

type ProductionAuthServices struct {
}

func (s *Services) NewUser(ctx context.Context, ip string, u *auth.UserModel) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.NewUser)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	_, err = mail.ParseAddress(u.Email)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	err = s.store.Auth.CreateUser(ctx, u)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	longHash, longToken := crypto.NewRandomHash()
	exp := time.Now().Add(time.Hour)
	longVerToken := &auth.VerificationTokenModel{
		UserUID:    u.ID,
		TokenHash:  longHash,
		Channel:    auth.ChannelLongEmail, // default for now
		Purpose:    auth.PurposeSignup,
		Expiration: exp,
	}

	if err := s.store.Auth.CreateVerification(ctx, longVerToken); err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	shortHash, shortToken, err := crypto.NewRandomCode()
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}
	exp = time.Now().Add(time.Minute * 5)
	shortVerToken := &auth.VerificationTokenModel{
		UserUID:    u.ID,
		TokenHash:  shortHash,
		Channel:    auth.ChannelShortEmail, // default for now
		Purpose:    auth.PurposeSignup,
		Expiration: exp,
	}
	if err = s.store.Auth.CreateVerification(ctx, shortVerToken); err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	s.auth.SendVerification(shortToken, longToken, u)

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	return nil
}

func (s *Services) RequestSignupVerificationTokens(ctx context.Context, ip string, u *auth.UserModel) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.RequestSignupVerification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}

	if err := s.ipUserRateLimit(ctx, ip, u.ID, iptracking.RequestSignupVerification); err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}

	if err := s.verifyVerificationTimeouts(ctx, auth.PurposeSignup, u.ID); err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}

	longHash, longToken := crypto.NewRandomHash()
	exp := time.Now().Add(time.Hour)
	longVerToken := &auth.VerificationTokenModel{
		UserUID:    u.ID,
		TokenHash:  longHash,
		Channel:    auth.ChannelLongEmail, // default for now
		Purpose:    auth.PurposeSignup,
		Expiration: exp,
	}

	if err := s.store.Auth.CreateVerification(ctx, longVerToken); err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}

	shortHash, shortToken, err := crypto.NewRandomCode()
	if err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}
	exp = time.Now().Add(time.Minute * 5)
	shortVerToken := &auth.VerificationTokenModel{
		UserUID:    u.ID,
		TokenHash:  shortHash,
		Channel:    auth.ChannelShortEmail, // default for now
		Purpose:    auth.PurposeSignup,
		Expiration: exp,
	}
	if err = s.store.Auth.CreateVerification(ctx, shortVerToken); err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}

	s.auth.SendVerification(shortToken, longToken, u)

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Request Signup Verification Tokens")
	}

	return nil
}

func (ProductionAuthServices) SendVerification(shortToken, longToken string, u *auth.UserModel) {
	fmt.Printf("Hi %s, please verify email %s with short token %sor long token %s\n", u.Name, u.Email, shortToken, longToken)
}

func (s *Services) CheckLongVerificationToken(ctx context.Context, ip, token string) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}

	uid, err := s.verifyToken(ctx, verification, uuid.Nil, auth.PurposeSignup)
	if err != nil {
		// no Attempt count possible with long token -> need to rely on ip tracker
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}

	err = s.store.Auth.UserVerified(ctx, uid)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Long Verification Token")
	}

	return nil
}

func (s *Services) CheckShortVerificationToken(ctx context.Context, ip, email, token string) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	err = s.ipUserRateLimit(ctx, ip, u.ID, iptracking.Verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	hashed := crypto.HashCode(token)
	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return errors.WithMessage(err, "auth service: Check Short Verification Token")
		}

		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	_, err = s.verifyToken(ctx, verification, u.ID, auth.PurposeSignup)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return errors.WithMessage(err, "auth service: Check Short Verification Token")
		}

		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	err = s.store.Auth.UserVerified(ctx, u.ID)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Short Verification Token")
	}

	return nil
}

func (s *Services) verifyToken(ctx context.Context, verification *auth.VerificationTokenModel, uid uuid.UUID, purpose auth.VerificationPurpose) (uuid.UUID, error) {

	if verification == nil {
		return uuid.Nil, errors.New("auth service: Verify Token. This token doesn't exist")
	}

	if verification.Attempts >= 5 {
		s.store.Auth.InvalidateVerificationToken(ctx, verification)
		return uuid.Nil, ErrFailedLimit
	}

	switch verification.Channel {
	case auth.ChannelLongEmail:
		if uid != uuid.Nil {
			return uuid.Nil, errors.New("auth service: Verify Token. UUID should be Nil")
		}
	case auth.ChannelShortEmail:
		if uid == uuid.Nil || uid != verification.UserUID {
			return uuid.Nil, errors.New("auth service: Verify Token. Invalid Verification")
		}

	default:
		return uuid.Nil, errors.New("auth service: Verify Token. Invalid Channel")
	}

	if verification.Purpose != purpose {
		return uuid.Nil, errors.New("auth service: Verify Token. Invalid Verification")
	}

	if time.Now().After(verification.Expiration) {
		return uuid.Nil, errors.New("auth service: Verify Token. Verification expired")
	}

	if verification.Consumed != nil && time.Now().After(verification.Consumed.Add(time.Hour*24)) {
		return uuid.Nil, errors.New("auth service: Verify Token. Verification link doesn't exist anymore")
	}

	return verification.UserUID, nil
}

var ErrWaitTimeout = errors.New("Wait 5 minutes for another token")

func (s *Services) verifyVerificationTimeouts(ctx context.Context, purpose auth.VerificationPurpose, uid uuid.UUID) error {
	v, err := s.store.Auth.ReadUserVerification(ctx, purpose, uid)
	if err != nil {
		return errors.WithMessage(err, "auth service: verify verification timeouts")
	}

	if v == nil {
		return nil
	}

	if v.Consumed != nil || time.Now().After(v.Expiration) {
		if err := s.store.Auth.DeleteVerificationToken(ctx, v); err != nil {
			return errors.WithMessage(err, "auth service: verify verificaton timeouts")
		}
		return nil
	}

	if time.Now().After(v.CreatedAt.Add(time.Minute * 5)) {
		return nil
	}

	return errors.Wrapf(ErrWaitTimeout, "auth service: auth service: verify verification timeouts for uid %s", uid)
}

func (s *Services) RequestResetPassword(ctx context.Context, ip, email string) error {
	if err := s.store.CreateTX(ctx); err != nil {
		return errors.WithMessage(err, "auth service: Reset Password")
	}
	defer s.store.RollbackTX(ctx)

	if err := s.ipRateLimit(ctx, ip, iptracking.RequestPasswordReset); err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	if err := s.ipUserRateLimit(ctx, ip, u.ID, iptracking.RequestPasswordReset); err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	if err := s.verifyVerificationTimeouts(ctx, auth.PurposePassword, u.ID); err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	longHash, longToken := crypto.NewRandomHash()
	shortHash, shortToken, err := crypto.NewRandomCode()
	if err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	exp := time.Now().Add(time.Hour)
	longVerToken := &auth.VerificationTokenModel{
		UserUID:    u.ID,
		TokenHash:  longHash,
		Channel:    auth.ChannelLongEmail, // default for now
		Purpose:    auth.PurposePassword,
		Expiration: exp,
	}

	if err := s.store.Auth.CreateVerification(ctx, longVerToken); err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	exp = time.Now().Add(time.Minute * 5)
	shortVerToken := &auth.VerificationTokenModel{
		UserUID:    u.ID,
		TokenHash:  shortHash,
		Channel:    auth.ChannelShortEmail, // default for now
		Purpose:    auth.PurposePassword,
		Expiration: exp,
	}
	if err = s.store.Auth.CreateVerification(ctx, shortVerToken); err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	s.auth.SendVerification(shortToken, longToken, u)

	if err := s.store.CommitTX(ctx); err != nil {
		return errors.WithMessage(err, "auth service: Request Reset Password")
	}

	return nil
}

func (s *Services) ResetPasswordShort(ctx context.Context, ip, email, token, newPw string) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	err = s.ipUserRateLimit(ctx, ip, u.ID, iptracking.Verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	hashed := crypto.HashCode(token)

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return errors.WithMessage(err, "auth service: Reset Password Short")
		}

		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	_, err = s.verifyToken(ctx, verification, u.ID, auth.PurposePassword)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return errors.WithMessage(err, "auth service: Reset Password Short")
		}

		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	newHashedPw, err := crypto.HashPassword(newPw)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	err = s.store.Auth.UpdateUserPassword(ctx, u.ID, newHashedPw)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Short")
	}

	return nil
}

func (s *Services) ResetPasswordLong(ctx context.Context, ip, token, newPw string) error {

	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	uid, err := s.verifyToken(ctx, verification, uuid.Nil, auth.PurposePassword)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	newHashedPw, err := crypto.HashPassword(newPw)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	err = s.store.Auth.UpdateUserPassword(ctx, uid, newHashedPw)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Reset Password Long")
	}

	return nil
}

func (s *Services) ChangePassword(ctx context.Context, ip, email, oldPw, newPw string) error {

	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Authentication)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	if !crypto.CheckPassword(oldPw, u.Pw) {
		return errors.Errorf("auth service: Change Password, Wrong Password for user %s", u.ID)
	}

	newHashedPw, err := crypto.HashPassword(newPw)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	err = s.store.Auth.UpdateUserPassword(ctx, u.ID, newHashedPw)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	return nil
}

type AuthResult struct {
	User    *auth.UserModel
	Access  *crypto.AccessToken
	Refresh *crypto.RefreshToken
}

func (s *Services) Authenticate(ctx context.Context, email, pw, ip string, remember bool) (*AuthResult, error) {
	err := s.store.CreateTX(ctx)
	defer s.store.RollbackTX(ctx)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	err = s.ipRateLimit(ctx, ip, iptracking.Authentication)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	err = s.checkAuthFailRate(ctx, u.ID)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	err = s.ipUserRateLimit(ctx, ip, u.ID, iptracking.Authentication)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	pwOK := crypto.CheckPassword(pw, u.Pw)
	if !pwOK {
		err = s.addAuthFailRate(ctx, ip, u.ID)
		if err != nil {
			return nil, errors.WithMessage(err, "service: Authenticate")
		}
		// auth fail todo: add
		return nil, errors.New("service: Authenticate didn't succeed")
	}

	t, err := s.CreateAccessToken(u.ID)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	r, err := s.CreateRefreshToken(ctx, u.ID, remember)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	return &AuthResult{User: u, Access: t, Refresh: r}, nil
}

func (s *Services) GetUserByEmail(ctx context.Context, email string) (*auth.UserModel, error) {
	return s.store.Auth.ReadUserByEmail(ctx, email)
}

func (s *Services) GetUserByID(ctx context.Context, id uuid.UUID) (*auth.UserModel, error) {
	return s.store.Auth.ReadUserByUID(ctx, id)
}

func (s *Services) CreateAccessToken(uid uuid.UUID) (*crypto.AccessToken, error) {
	return crypto.NewAccessToken(uid)
}

func (s *Services) CreateRefreshToken(ctx context.Context, uid uuid.UUID, remember bool) (*crypto.RefreshToken, error) {
	refresh := crypto.NewRefreshToken(remember)
	defer refresh.Clean()

	err := s.store.Auth.StoreRefreshToken(ctx, uid, refresh)
	if err != nil {
		return nil, errors.WithMessagef(err, "auth service: Create Access Token")
	}

	return refresh, nil
}

func (s *Services) InvalidateRefresh(ctx context.Context, token string) error {
	hashed, err := crypto.HashToken(token)
	if err != nil {
		return errors.WithMessage(err, "auth service: Invalidate Refresh")
	}

	return s.store.Auth.DeleteRefreshTokenByToken(ctx, hashed)
}

func (s *Services) RefreshToken(ctx context.Context, ip, token string) (*AuthResult, error) {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}
	defer s.store.RollbackTX(ctx)

	if err := s.ipRateLimit(ctx, ip, iptracking.Refresh); err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	refresh, err := s.store.Auth.ReadRefreshTokenByToken(ctx, hashed)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	//todo: if refresh.Revoked
	if time.Now().After(refresh.Expiration) {
		return nil, errors.New("auth service: Refresh Token. Invalid Token")
	}

	//rotate
	//todo: s.store.Auth.Revoke(ctx, refresh.ID)
	err = s.store.Auth.DeleteRefreshTokenByToken(ctx, hashed)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	newRefresh, err := s.CreateRefreshToken(ctx, refresh.UserUID, refresh.Remember)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	newAccess, err := s.CreateAccessToken(refresh.UserUID)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	user, err := s.store.Auth.ReadUserByUID(ctx, refresh.UserUID)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return nil, errors.WithMessage(err, "auth service: Refresh Token")
	}

	return &AuthResult{User: user, Refresh: newRefresh, Access: newAccess}, nil
}
