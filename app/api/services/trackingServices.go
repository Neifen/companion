package services

import (
	"context"
	"fmt"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/htmx-login/app/api/storage/tracking"
	"github.com/pkg/errors"
)

func (s *Services) ReadTasksFrom(ctx context.Context, userID uuid.UUID, fromTime time.Time) ([]tracking.TaskModel, bool, error) {
	const pages = 10

	tasks, err := s.store.Tracking.ReadTasksFrom(ctx, userID, pages+1, fromTime)
	if err != nil {
		return nil, false, errors.Wrap(err, "services: ReadTaskFrom")
	}

	if len(tasks) == 0 {
		return tasks, false, nil
	}

	hasMore := tasks[0].DatesCounter > pages
	return tasks, hasMore, nil
}

func (s *Services) ReadTasksUntil(ctx context.Context, userID uuid.UUID, toTime time.Time) ([]tracking.TaskModel, bool, error) {
	const pages = 10

	tasks, err := s.store.Tracking.ReadTasksUntil(ctx, userID, pages+1, toTime)
	if err != nil {
		return nil, false, errors.Wrap(err, "services: ReadTaskFrom")
	}

	if len(tasks) == 0 {
		return tasks, false, nil
	}

	hasMore := tasks[0].DatesCounter > pages
	return tasks, hasMore, nil
}

func (s *Services) CheckTask(ctx context.Context, itemID int64, checked bool) error {
	if err := s.store.Tracking.CheckTask(ctx, itemID, checked); err != nil {
		return errors.Errorf("CheckTask(itemID: %d, checked: %v)", itemID, checked)
	}

	return nil
}

func (s *Services) ReadUserTracker(ctx context.Context, userID uuid.UUID) (*tracking.TrackerModel, error) {
	tracker, err := s.store.Tracking.ReadUserTracker(ctx, userID)
	if err != nil {
		return nil, errors.Wrapf(err, "ReadUserTracker(uid: %d)", userID)
	}

	return tracker, nil
}

func (s *Services) DeleteUserTracker(ctx context.Context, userID uuid.UUID) error {
	if err := s.store.Tracking.DeleteUserTracker(ctx, userID); err != nil {
		return errors.Wrapf(err, "DeleteUserTracker(uid: %d)", userID)
	}
	return nil
}

func (s *Services) MoveTrackerDays(ctx context.Context, userID uuid.UUID, days int) error {
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

func (s *Services) MoveTrackerStart(ctx context.Context, userID uuid.UUID, start string, moveEnd bool) error {
	if moveEnd {
		return s.MoveTrackerWithStart(ctx, userID, start)
	}

	return s.MoveTracker(ctx, userID, start, "")
}

func (s *Services) MoveTrackerEnd(ctx context.Context, userID uuid.UUID, end string, resetStart bool) error {
	start := ""
	if resetStart {
		start = time.Now().Format("2006-01-02")
	}

	return s.MoveTracker(ctx, userID, start, end)
}

func (s *Services) MoveTrackerWithStart(ctx context.Context, userID uuid.UUID, newStartRaw string) error {
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

func (s *Services) MoveTracker(ctx context.Context, userID uuid.UUID, start, end string) error {
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

func (s *Services) CreateTracker(ctx context.Context, userID uuid.UUID, planID int, startRaw, endRaw string) error {
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
