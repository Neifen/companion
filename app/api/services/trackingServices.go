package services

import (
	"context"
	"fmt"
	"time"

	"github.com/pkg/errors"
)

func (s *Services) MoveTrackerDays(ctx context.Context, userID int, days int) error {
	if err := s.store.CreateTX(ctx); err != nil {
		return errors.Wrapf(err, "MoveTrackerDays(uid: %d, days: %d)", userID, days)
	}
	defer s.store.RollbackTX(ctx)

	if err := s.store.Tracking.MoveTaskDays(ctx, userID, days); err != nil {
		return errors.Wrapf(err, "MoveTrackerDays(uid: %d, days: %d)", userID, days)
	}

	if err := s.store.Tracking.MoveTrackerDays(ctx, userID, days); err != nil {
		return errors.Wrapf(err, "MoveTrackerDays(uid: %d, days: %d)", userID, days)
	}

	s.store.CommitTX(ctx)
	return nil
}

func (s *Services) MoveTracker(ctx context.Context, userID int, start, end string) error {
	if start == "" && end == "" {
		return errors.New("Both start and end are empty")
	}

	if err := s.store.CreateTX(ctx); err != nil {
		return errors.Wrapf(err, "MoveTracker(uid: %d, start: %s, end: %s)", userID, start, end)
	}
	defer s.store.RollbackTX(ctx)

	var (
		startTime time.Time
		endTime   time.Time
		err       error
	)

	if start != "" {
		startTime, err = time.Parse("2006-01-02", start)
		if err != nil {
			return errors.Wrapf(err, "MoveTracker(uid: %d, start: %s, end: %s)", userID, start, end)
		}
	} else {
		startTime, err = s.store.Tracking.GetTrackerStart(ctx, userID)
		if err != nil {
			return errors.Wrapf(err, "MoveTracker(uid: %d, start: %s, end: %s)", userID, start, end)
		}
	}

	if end != "" {
		endTime, err = time.Parse("2006-01-02", end)
		if err != nil {
			return errors.Wrapf(err, "MoveTracker(uid: %d, start: %s, end: %s)", userID, start, end)
		}
	} else {
		endTime, err = s.store.Tracking.GetTrackerEnd(ctx, userID)
		if err != nil {
			return errors.Wrapf(err, "MoveTracker(uid: %d, start: %s, end: %s)", userID, start, end)
		}
	}

	if endTime.Before(startTime) {
		return errors.Errorf("End %s was after Start %s", end, start)
	}

	if err := s.store.Tracking.MoveTracker(ctx, userID, start, end); err != nil {
		return errors.Wrapf(err, "MoveTracker(uid: %d, start: %s, end: %s)", userID, start, end)
	}

	if err := s.store.Tracking.MoveTasks(ctx, userID, start, end); err != nil {
		return errors.Wrapf(err, "MoveTracker(uid: %d, start: %s, end: %s)", userID, start, end)
	}

	s.store.CommitTX(ctx)
	return nil
}

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

	if err = s.store.CreateTX(ctx); err != nil {
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
