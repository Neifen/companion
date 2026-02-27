package iptracking

import (
	"context"

	"github.com/google/uuid"
	"github.com/pkg/errors"
)

const trackingTable = "auth.ip_tracking"

func (pg *IPTrackingStore) GetIPAttempts(ctx context.Context, ip string, trackingCtx TrackingContext) (uint16, error) {
	row := pg.db.QueryRow(ctx, "SELECT count(*) FROM "+trackingTable+" WHERE ip=$1 and context=$2 AND NOW() - INTERVAL '5 minutes' < created_at", ip, trackingCtx)

	var count uint16
	err := row.Scan(&count)
	if err != nil {
		return 0, errors.Wrapf(err, "auth db: Get Ip Attempts for ip %s", ip)
	}

	return count, nil
}

func (pg *IPTrackingStore) AddIPAttempt(ctx context.Context, ip string, trackingCtx TrackingContext) error {
	_, err := pg.db.Exec(ctx, "INSERT INTO "+trackingTable+"(ip, context) VALUES ($1, $2)", ip, trackingCtx)
	if err != nil {
		return errors.Wrapf(err, "auth db: Add Ip Attempt for ip %s", ip)
	}

	return nil
}

func (pg *IPTrackingStore) GetIPUserAttempts(ctx context.Context, ip string, uid uuid.UUID, trackingCtx TrackingContext) (uint16, error) {
	row := pg.db.QueryRow(ctx, "SELECT count(*) FROM "+trackingTable+" WHERE ip=$1 AND user_id=$2 and context=$3 AND NOW() - INTERVAL '5 minutes' < created_at", ip, uid, trackingCtx)

	var count uint16
	err := row.Scan(&count)
	if err != nil {
		return 0, errors.Wrapf(err, "auth db: Get IP/User Attempts for ip %s/user %s/context %s", ip, uid, trackingCtx)
	}

	return count, nil
}

func (pg *IPTrackingStore) AddIPUserAttempts(ctx context.Context, ip string, uid uuid.UUID, trackingCtx TrackingContext) error {
	_, err := pg.db.Exec(ctx, "INSERT INTO "+trackingTable+"(ip, user_id, context) VALUES ($1, $2, $3)", ip, uid, trackingCtx)
	if err != nil {
		return errors.Wrapf(err, "auth db: Add IP/User Attempt for ip %s/user %s/context %s", ip, uid, trackingCtx)
	}

	return nil
}

func (pg *IPTrackingStore) GetFailedAuthAttempts(ctx context.Context, uid uuid.UUID) (uint16, error) {
	row := pg.db.QueryRow(ctx, "SELECT count(*) FROM "+trackingTable+" WHERE user_id=$1 and context=$2 AND NOW() - INTERVAL '5 minutes' < created_at", uid, FailedAuthentication)

	var count uint16
	err := row.Scan(&count)
	if err != nil {
		return 0, errors.Wrapf(err, "auth db: Get IP/User Attempts for user %s/context %s", uid, FailedAuthentication)
	}

	return count, nil
}

func (pg *IPTrackingStore) AddFailedAuthAttempt(ctx context.Context, ip string, uid uuid.UUID) error {
	_, err := pg.db.Exec(ctx, "INSERT INTO "+trackingTable+"(user_id, ip, context) VALUES ($1, $2, $3)", uid, ip, FailedAuthentication)
	if err != nil {
		return errors.Wrapf(err, "auth db: Add IP/User Attempt for user %s/context %s", uid, FailedAuthentication)
	}

	return nil
}
