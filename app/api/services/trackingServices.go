package services

import (
	"context"
	"fmt"
	"time"

	"github.com/pkg/errors"
)

func (s *Services) CreateTracker(ctx context.Context, userID, planID int, startRaw, endRaw string) error {
	start, err := time.Parse("2006-01-02", startRaw)
	if err != nil {
		return errors.Wrapf(err, "createTracker(%d) could not transform start to date", userID)
	}

	end, err := time.Parse("2006-01-02", endRaw)
	if err != nil {
		return errors.Wrapf(err, "createTracker(%d) could not transform end to date", userID)
	}

	if i := end.Compare(start); i <= 0 {
		return fmt.Errorf("CreateTracker(%d): start: %s needs to be before end: %s", userID, startRaw, endRaw)
	}

	err = s.store.CreateTX(ctx)
	if err != nil {
		return errors.Wrapf(err, "createTracker(%d) could not start tx", userID)
	}

	defer s.store.RollbackTX(ctx)

	err = s.store.Tracking.DeleteTracker(ctx, userID)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, start: %s, end: %s) could not delete trackers Table", userID, startRaw, endRaw)
	}

	trackerID, err := s.store.Tracking.CreateTracker(ctx, userID, startRaw, endRaw)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, planID: %d, start: %s, end: %s) ", userID, planID, startRaw, endRaw)
	}

	err = s.store.Tracking.CreateTasks(ctx, trackerID, planID, startRaw, endRaw)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, planID: %d, start: %s, end: %s) ", userID, planID, startRaw, endRaw)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return errors.Wrapf(err, "CreateTracker(userID: %d, planID: %d, start: %s, end: %s) ", userID, planID, startRaw, endRaw)
	}

	return nil
}
