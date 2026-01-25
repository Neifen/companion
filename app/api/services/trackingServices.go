package services

import (
	"context"
	"fmt"
	"time"

	"github.com/neifen/htmx-login/app/api/storage/tracking"
	"github.com/pkg/errors"
)

func (s *Services) ReadUserTracker(ctx context.Context, userID int) (*tracking.TrackerModel, error) {
	tracker, err := s.store.Tracking.ReadUserTracker(ctx, userID)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadUserTracker(uid: %d)", userID)
	}

	return tracker, nil
}

func (s *Services) DeleteUserTracker(ctx context.Context, userID int) error {
	if err := s.store.Tracking.DeleteUserTracker(ctx, userID); err != nil {
		return errors.Wrapf(err, "DeleteUserTracker(uid: %d)", userID)
	}
	return nil
}

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

func (s *Services) MoveTrackerStart(ctx context.Context, userID int, start string, moveEnd bool) error {
	if moveEnd {
		return s.MoveTrackerWithStart(ctx, userID, start)
	}

	return s.MoveTracker(ctx, userID, start, "")
}

func (s *Services) MoveTrackerEnd(ctx context.Context, userID int, end string, resetStart bool) error {
	start := ""
	if resetStart {
		start = time.Now().Format("2006-01-02")
	}

	return s.MoveTracker(ctx, userID, start, end)
}

func (s *Services) MoveTrackerWithStart(ctx context.Context, userID int, newStartRaw string) error {
	if err := s.store.CreateTX(ctx); err != nil {
		return errors.Wrapf(err, "MoveTrackerWithStart(uid: %d, New Start: %s)", userID, newStartRaw)
	}
	defer s.store.RollbackTX(ctx)

	oldStart, err := s.store.Tracking.GetTrackerStart(ctx, userID)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerWithStart(uid: %d, New Start: %s)", userID, newStartRaw)
	}

	newStart, err := time.Parse("2006-01-02", newStartRaw)
	if err != nil {
		return errors.Wrapf(err, "MoveTrackerWithStart(uid: %d, New Start: %s)", userID, newStartRaw)
	}

	days := int(newStart.Sub(oldStart).Hours() / 24)
	if err := s.store.Tracking.MoveTaskDays(ctx, userID, days); err != nil {
		return errors.Wrapf(err, "MoveTrackerWithStart(uid: %d, New Start: %s)", userID, newStart)
	}

	if err := s.store.Tracking.MoveTrackerDays(ctx, userID, days); err != nil {
		return errors.Wrapf(err, "MoveTrackerWithStart(uid: %d, New Start: %s)", userID, newStart)
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

	err = s.store.Tracking.DeleteUserTracker(ctx, userID)
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
