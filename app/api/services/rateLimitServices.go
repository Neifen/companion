package services

import (
	"context"

	"github.com/google/uuid"
	"github.com/pkg/errors"
)

var ErrIPRateLimit = errors.New("Too many attempts for IP in last 5 minutes")

func (s *Services) ipRateLimitCheckOnly(ctx context.Context, ip string) error {
	if ip == "" {
		return errors.Errorf("IP was invalid %s", ip)
	}
	// todo: configurable?
	count, err := s.store.Auth.GetIPAttempts(ctx, ip)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check IP Attempts with db error")
	}

	if count > 250 {
		return ErrIPRateLimit
	}

	return nil
}

func (s *Services) ipRateLimit(ctx context.Context, ip string) error {
	if ip == "" {
		return errors.Errorf("IP was invalid %s", ip)
	}
	// todo: configurable?
	count, err := s.store.Auth.GetIPAttempts(ctx, ip)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check IP Attempts with db error")
	}

	if count > 250 {
		return ErrIPRateLimit
	}

	err = s.store.Auth.AddIPAttempt(ctx, ip)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check IP Attempts with db error")
	}

	return nil
}

func (s *Services) uidIPRateLimit(ctx context.Context, ip string, uid uuid.UUID) error {
	if ip == "" {
		return errors.Errorf("IP was invalid %s", ip)
	}
	// todo: configurable?
	count, err := s.store.Auth.GetTrackingAttempts(ctx, ip, uid)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check IP Attempts with db error")
	}

	if count > 5 {
		return ErrIPRateLimit
	}

	err = s.store.Auth.AddTrackingAttempts(ctx, ip, uid)
	if err != nil {
		return errors.WithMessage(err, "auth service: Check IP Attempts with db error")
	}

	return nil
}
