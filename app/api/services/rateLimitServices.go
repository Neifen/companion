package services

import (
	"context"
	"errors"
	"fmt"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/api/storage/iptracking"
)

var ErrIPRateLimit = errors.New("rate limit service: too many attempts for IP in last 5 minutes")
var ErrFailedLimit = errors.New("rate limit service: too many failed Attempts")

func (s *Services) ipRateLimit(ctx context.Context, ip string, trackingCtx iptracking.TrackingContext) error {
	if ip == "" {
		return fmt.Errorf("IP was invalid %s", ip)
	}
	// todo: configurable?
	count, err := s.store.IPTracking.GetIPAttempts(ctx, ip, trackingCtx)
	if err != nil {
		return fmt.Errorf("rate limit service:  Check IP Attempts with db error %w", err)
	}
	if trackingCtx == iptracking.Authentication && count >= 399 { // 400 attempts
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.Verification && count >= 249 { // 250 attempts
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.RequestSignupVerification && count >= 99 { // 100 attempts
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.NewUser && count >= 199 { // 200 attempts
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.RequestPasswordReset && count >= 199 { // 200 attempts
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.Refresh && count >= 199 { // 200 attempts
		return ErrIPRateLimit
	}
	// FailedAuthentication is used somewhere else

	err = s.store.IPTracking.AddIPAttempt(ctx, ip, trackingCtx)
	if err != nil {
		return fmt.Errorf("rate limit service:  Check IP Attempts with db error %w", err)
	}

	return nil
}

func (s *Services) ipUserRateLimit(ctx context.Context, ip string, uid uuid.UUID, trackingCtx iptracking.TrackingContext) error {
	if ip == "" {
		return fmt.Errorf("rate limit service: IP was invalid %s", ip)
	}
	// todo: configurable?
	count, err := s.store.IPTracking.GetIPUserAttempts(ctx, ip, uid, trackingCtx)
	if err != nil {
		return fmt.Errorf("rate limit service:  Check IP Attempts with db error %w", err)
	}

	if trackingCtx == iptracking.Authentication && count >= 9 { // fail on 10th attempt
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.Verification && count >= 6 { // fail on 7th attempt
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.RequestPasswordReset && count >= 5 { // fail on 6th attempt
		return ErrIPRateLimit
	}
	if trackingCtx == iptracking.RequestSignupVerification && count >= 5 { // fail on 6th attempt
		return ErrIPRateLimit
	}
	// FailedAuthentication is used somewhere else
	// no ipUserRateLimit necessary/available for NewUser and Refresh

	err = s.store.IPTracking.AddIPUserAttempts(ctx, ip, uid, trackingCtx)
	if err != nil {
		return fmt.Errorf("rate limit service: Check IP Attempts with db error %w", err)
	}

	return nil
}

func (s *Services) checkAuthFailRate(ctx context.Context, uid uuid.UUID) error {
	// todo: configurable?
	count, err := s.store.IPTracking.GetFailedAuthAttempts(ctx, uid)
	if err != nil {
		return fmt.Errorf("rate limit service: Check Failed Auth Attempt with db error %w", err)
	}

	if count > 5 {
		return ErrFailedLimit
	}

	return nil
}

func (s *Services) addAuthFailRate(ctx context.Context, ip string, uid uuid.UUID) error {
	// todo: configurable?
	err := s.store.IPTracking.AddFailedAuthAttempt(ctx, ip, uid)
	if err != nil {
		return fmt.Errorf("rate limit service: Add Failed Auth Attempt with db error %w", err)
	}

	return nil
}
