package services

import (
	"context"
	"errors"
	"fmt"
	"net/mail"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/api/crypto"
	"github.com/neifen/companion/app/api/storage/auth"
	"github.com/neifen/companion/app/api/storage/iptracking"
)

type AuthServices interface {
	SendVerification(shortToken, longToken string, u *auth.UserModel, p auth.VerificationPurpose) error
}

type ProductionAuthServices struct {
}

func (s *Services) NewUser(ctx context.Context, ip string, u *auth.UserModel) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: New User %w", err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.NewUser)
	if err != nil {
		return fmt.Errorf("auth service: New User %w", err)
	}

	_, err = mail.ParseAddress(u.Email)
	if err != nil {
		return fmt.Errorf("auth service: New User %w", err)
	}

	err = s.store.Auth.CreateUser(ctx, u)
	if err != nil {
		return fmt.Errorf("auth service: New User %w", err)
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
		return fmt.Errorf("auth service: New User %w", err)
	}

	shortHash, shortToken, err := crypto.NewRandomCode()
	if err != nil {
		return fmt.Errorf("auth service: New User %w", err)
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
		return fmt.Errorf("auth service: New User %w", err)
	}

	s.auth.SendVerification(shortToken, longToken, u, auth.PurposeSignup)

	err = s.store.CommitTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: New User %w", err)
	}

	return nil
}

// todo: test
func (s *Services) EditUserStatus(ctx context.Context, uid uuid.UUID, status auth.UserStatus) error {
	err := s.store.Auth.EditUserStatus(ctx, uid, status)
	if err != nil {
		return fmt.Errorf("user service: EditUserStatus() %w", err)
	}

	return nil
}

func (s *Services) GetPasswordRecoveryTokenExpiration(ctx context.Context, email string) (time.Time, error) {
	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return time.Time{}, fmt.Errorf("auth service: get password recovery token expiration for %s %w", email, err)
	}

	v, err := s.store.Auth.ReadUserVerification(ctx, auth.PurposePassword, auth.ChannelShortEmail, u.ID)
	if err != nil {
		return time.Time{}, fmt.Errorf("auth service: get verification token expiration for %s %w", email, err)
	}
	if v == nil {
		// no more token, just allow refresh
		return time.Time{}, nil
	}

	return v.Expiration, nil
}

func (s *Services) GetVerificationTokenExpiration(ctx context.Context, uid uuid.UUID) (time.Time, error) {
	v, err := s.store.Auth.ReadUserVerification(ctx, auth.PurposeSignup, auth.ChannelShortEmail, uid)
	if err != nil {
		return time.Time{}, fmt.Errorf("auth service: get verification token expiration for %s %w", uid, err)
	}
	if v == nil {
		// no more token, just allow refresh
		return time.Time{}, nil
	}

	return v.Expiration, nil
}

func (s *Services) RequestSignupVerificationTokens(ctx context.Context, ip string, u *auth.UserModel) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.RequestSignupVerification)
	if err != nil {
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
	}

	if err := s.ipUserRateLimit(ctx, ip, u.ID, iptracking.RequestSignupVerification); err != nil {
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
	}

	if err := s.verifyVerificationTimeouts(ctx, auth.PurposeSignup, u.ID); err != nil {
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
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
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
	}

	shortHash, shortToken, err := crypto.NewRandomCode()
	if err != nil {
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
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
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
	}

	s.auth.SendVerification(shortToken, longToken, u, auth.PurposeSignup)

	err = s.store.CommitTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Request Signup Verification Tokens %w", err)
	}

	return nil
}

func (ProductionAuthServices) SendVerification(shortToken, longToken string, u *auth.UserModel, p auth.VerificationPurpose) error {
	return sendSignupMail(shortToken, longToken, u, p)
}

func (s *Services) CheckLongVerificationToken(ctx context.Context, ip, token string) (*auth.UserModel, error) {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	uid, err := s.verifyToken(ctx, verification, uuid.Nil, auth.PurposeSignup)
	if err != nil {
		// no Attempt count possible with long token -> need to rely on ip tracker
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	err = s.store.Auth.UserVerified(ctx, uid)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	u, err := s.store.Auth.ReadUserByUID(ctx, uid)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Long Verification Token %w", err)
	}

	return u, nil
}

func (s *Services) CheckShortVerificationToken(ctx context.Context, ip, token string, uid uuid.UUID) (*auth.UserModel, error) {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	u, err := s.store.Auth.ReadUserByUID(ctx, uid)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	err = s.ipUserRateLimit(ctx, ip, u.ID, iptracking.Verification)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	hashed := crypto.HashCode(token)
	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
		}

		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	_, err = s.verifyToken(ctx, verification, u.ID, auth.PurposeSignup)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
		}

		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	err = s.store.Auth.UserVerified(ctx, u.ID)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("auth service: Check Short Verification Token %w", err)
	}

	return u, nil
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

var ErrWaitTimeout = errors.New("wait 5 minutes for another token")

func (s *Services) verifyVerificationTimeouts(ctx context.Context, purpose auth.VerificationPurpose, uid uuid.UUID) error {
	// short channel is fine, both were created at same time
	v, err := s.store.Auth.ReadUserVerification(ctx, purpose, auth.ChannelShortEmail, uid)
	if err != nil {
		return fmt.Errorf("auth service: verify verification timeouts %w", err)
	}

	if v == nil {
		return nil
	}

	if v.Consumed != nil || time.Now().After(v.Expiration) {
		if err := s.store.Auth.DeleteVerificationToken(ctx, v); err != nil {
			return fmt.Errorf("auth service: verify verificaton timeouts %w", err)
		}
		return nil
	}

	if time.Now().After(v.CreatedAt.Add(time.Minute * 5)) {
		return nil
	}

	return fmt.Errorf("auth service: auth service: verify verification timeouts for uid %s %w", uid, ErrWaitTimeout)
}

func (s *Services) RequestResetPassword(ctx context.Context, ip, email string) error {
	if err := s.store.CreateTX(ctx); err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}
	defer s.store.RollbackTX(ctx)

	if err := s.ipRateLimit(ctx, ip, iptracking.RequestPasswordReset); err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}

	if err := s.ipUserRateLimit(ctx, ip, u.ID, iptracking.RequestPasswordReset); err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}

	if err := s.verifyVerificationTimeouts(ctx, auth.PurposePassword, u.ID); err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}

	longHash, longToken := crypto.NewRandomHash()
	shortHash, shortToken, err := crypto.NewRandomCode()
	if err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
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
		return fmt.Errorf("auth service: Request Reset Password %w", err)
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
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}

	err = s.auth.SendVerification(shortToken, longToken, u, auth.PurposePassword)
	if err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}

	if err := s.store.CommitTX(ctx); err != nil {
		return fmt.Errorf("auth service: Request Reset Password %w", err)
	}

	return nil
}

var ErrPasswordUnchanged error = fmt.Errorf("password unchanged")

func (s *Services) ResetPasswordShort(ctx context.Context, ip, email, token, newPw string) error {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	err = s.ipUserRateLimit(ctx, ip, u.ID, iptracking.Verification)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	hashed := crypto.HashCode(token)

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return fmt.Errorf("auth service: Reset Password Short %w", err)
		}

		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	_, err = s.verifyToken(ctx, verification, u.ID, auth.PurposePassword)
	if err != nil {
		s.store.Auth.AddVerificationAttempt(ctx, u.ID)
		if err := s.store.CommitTX(ctx); err != nil {
			return fmt.Errorf("auth service: Reset Password Short %w", err)
		}

		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	if crypto.CheckPassword(newPw, u.Pw) {
		return ErrPasswordUnchanged
	}

	newHashedPw, err := crypto.HashPassword(newPw)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	err = s.store.Auth.UpdateUserPassword(ctx, u.ID, newHashedPw)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Short %w", err)
	}

	return nil
}

func (s *Services) ResetPasswordLong(ctx context.Context, ip, token, newPw string) error {

	err := s.store.CreateTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Verification)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	uid, err := s.verifyToken(ctx, verification, uuid.Nil, auth.PurposePassword)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	newHashedPw, err := crypto.HashPassword(newPw)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	err = s.store.Auth.UpdateUserPassword(ctx, uid, newHashedPw)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Reset Password Long %w", err)
	}

	return nil
}

func (s *Services) ChangePassword(ctx context.Context, ip, email, oldPw, newPw string) error {

	err := s.store.CreateTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Change Password %w", err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.ipRateLimit(ctx, ip, iptracking.Authentication)
	if err != nil {
		return fmt.Errorf("auth service: Change Password %w", err)
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return fmt.Errorf("auth service: Change Password %w", err)
	}

	if !crypto.CheckPassword(oldPw, u.Pw) {
		return fmt.Errorf("auth service: Change Password, Wrong Password for user %s", u.ID)
	}

	newHashedPw, err := crypto.HashPassword(newPw)
	if err != nil {
		return fmt.Errorf("auth service: Change Password %w", err)
	}

	err = s.store.Auth.UpdateUserPassword(ctx, u.ID, newHashedPw)
	if err != nil {
		return fmt.Errorf("auth service: Change Password %w", err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return fmt.Errorf("auth service: Change Password %w", err)
	}

	return nil
}

type AuthResult struct {
	User    *auth.UserModel
	Access  *crypto.AccessToken
	Refresh *crypto.RefreshToken
}

func (s *Services) Authenticate(ctx context.Context, ip, email, pw string, remember bool) (*AuthResult, error) {
	err := s.store.CreateTX(ctx)
	defer s.store.RollbackTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
	}

	err = s.ipRateLimit(ctx, ip, iptracking.Authentication)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
	}

	err = s.checkAuthFailRate(ctx, u.ID)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
	}

	err = s.ipUserRateLimit(ctx, ip, u.ID, iptracking.Authentication)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
	}

	pwOK := crypto.CheckPassword(pw, u.Pw)
	if !pwOK {
		err = s.addAuthFailRate(ctx, ip, u.ID)
		if err != nil {
			return nil, fmt.Errorf("service: Authenticate %w", err)
		}
		// auth fail todo: add
		return nil, errors.New("service: Authenticate didn't succeed")
	}

	t, err := s.CreateAccessToken(u.ID)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
	}

	r, err := s.CreateRefreshToken(ctx, u.ID, remember)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("service: Authenticate %w", err)
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
		return nil, fmt.Errorf("auth service: Create Access Token %w", err)
	}

	return refresh, nil
}

func (s *Services) InvalidateRefresh(ctx context.Context, token string) error {
	hashed, err := crypto.HashToken(token)
	if err != nil {
		return fmt.Errorf("auth service: Invalidate Refresh %w", err)
	}

	return s.store.Auth.DeleteRefreshTokenByToken(ctx, hashed)
}

func (s *Services) RefreshToken(ctx context.Context, ip, token string) (*AuthResult, error) {
	err := s.store.CreateTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}
	defer s.store.RollbackTX(ctx)

	if err := s.ipRateLimit(ctx, ip, iptracking.Refresh); err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	refresh, err := s.store.Auth.ReadRefreshTokenByToken(ctx, hashed)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	//todo: if refresh.Revoked
	if time.Now().After(refresh.Expiration) {
		return nil, errors.New("auth service: Refresh Token. Invalid Token")
	}

	//rotate
	//todo: s.store.Auth.Revoke(ctx, refresh.ID)
	err = s.store.Auth.DeleteRefreshTokenByToken(ctx, hashed)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	newRefresh, err := s.CreateRefreshToken(ctx, refresh.UserUID, refresh.Remember)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	newAccess, err := s.CreateAccessToken(refresh.UserUID)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	user, err := s.store.Auth.ReadUserByUID(ctx, refresh.UserUID)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return nil, fmt.Errorf("auth service: Refresh Token %w", err)
	}

	return &AuthResult{User: user, Refresh: newRefresh, Access: newAccess}, nil
}
