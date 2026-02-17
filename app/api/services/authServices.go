package services

import (
	"bytes"
	"context"
	"fmt"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/crypto"
	"github.com/neifen/htmx-login/app/api/storage/auth"
	"github.com/pkg/errors"
)

func (s *Services) NewUser(ctx context.Context, u *auth.UserModel) error {
	hash, token := crypto.NewRandomHash()
	exp := time.Now().Add(time.Hour)
	ver := &auth.VerificationTokenModel{
		UserUID:    u.ID,
		TokenHash:  hash,
		Channel:    "email", // default for now
		Purpose:    auth.PurposeSignup,
		Expiration: exp,
	}

	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}
	defer s.store.RollbackTX(ctx)

	err = s.store.Auth.CreateVerification(ctx, ver)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	err = s.store.Auth.CreateUser(ctx, u)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	sendVerificationEmail(token, u)

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: New User")
	}

	return nil
}

func sendVerificationEmail(token string, u *auth.UserModel) {
	fmt.Println("Hi %s, please verify email %s with token %s", u.Name, u.Email, token)
}

func (s *Services) CheckVerificationToken(ctx context.Context, token string, uid uuid.UUID) error {

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Verfication Token")
	}

	err = s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Verfication Token")
	}
	defer s.store.RollbackTX(ctx)

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Verfication Token")
	}

	if verification == nil || verification.UserUID == uid || verification.Purpose != auth.PurposeSignup {
		return errors.New("auth service: Check Verfication Token. Invalid Verification")
	}

	if verification.Expiration.After(time.Now()) {
		return errors.New("auth service: Check Verfication Token. Verification expired")
	}

	if verification.Consumed != nil && verification.Consumed.After(time.Now().Add(time.Hour*24)) {
		return errors.New("auth service: Check Verfication Token. Verification link doesn't exist anymore")
	}

	err = s.store.Auth.UserVerified(ctx, uid)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Verfication Token")
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Verfication Token")
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check Verfication Token")
	}

	return nil
}

func (s *Services) ChangePassword(ctx context.Context, token, oldPw, newPw string, uid uuid.UUID) error {

	err := s.store.CreateTX(ctx)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}
	defer s.store.RollbackTX(ctx)

	hashed, err := crypto.HashToken(token)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	verification, err := s.store.Auth.ReadVerification(ctx, hashed)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	if verification == nil || verification.UserUID == uid || verification.Purpose != auth.PurposePassword {
		return errors.New("auth service: Change Password. Invalid Verification")
	}

	if verification.Expiration.After(time.Now()) {
		return errors.New("auth service: Change Password. Verification expired")
	}

	if verification.Consumed != nil && verification.Consumed.After(time.Now().Add(time.Hour*24)) {
		return errors.New("auth service: Change Password. Verification link doesn't exist anymore")
	}

	u, err := s.store.Auth.ReadUserByUID(ctx, uid)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	hashedOldPw := crypto.HashPassword(oldPw)
	if !bytes.Equal(u.Pw, hashedOldPw) {
		return errors.New("auth service: Change Password. Password invalid")
	}

	newHashedPw := crypto.HashPassword(newPw)
	err = s.store.Auth.UpdateUserPassword(ctx, uid, newHashedPw)
	if err != nil {
		return errors.WithMessage(err, "auth service: Change Password")
	}

	now := time.Now()
	verification.Consumed = &now
	err = s.store.Auth.ConsumeVerification(ctx, verification)
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

func (s *Services) Authenticate(ctx context.Context, email, pw string, remember bool) (*AuthResult, error) {
	err := s.store.CreateTX(ctx)
	defer s.store.RollbackTX(ctx)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	u, err := s.store.Auth.ReadUserByEmail(ctx, email)
	if err != nil {
		return nil, errors.WithMessage(err, "service: Authenticate")
	}

	pwHash := crypto.HashPassword(pw)
	if !bytes.Equal(pwHash, u.Pw) {
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

func (s *Services) RefreshToken(ctx context.Context, token string) (*AuthResult, error) {
	err := s.store.CreateTX(ctx)
	defer s.store.RollbackTX(ctx)

	if err != nil {
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
