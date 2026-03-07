package services

import (
	"context"
	"errors"
	"fmt"
	"time"

	"github.com/google/uuid"
	"github.com/neifen/companion/app/api/storage/tracking"
)

func (s *Services) ReadTasksFrom(ctx context.Context, userID uuid.UUID, fromTime time.Time) ([]tracking.TaskModel, bool, error) {
	const pages = 10

	tasks, err := s.store.Tracking.ReadTasksFrom(ctx, userID, pages+1, fromTime)
	if err != nil {
		return nil, false, fmt.Errorf("tracking service: ReadTaskFrom %w", err)
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
		return nil, false, fmt.Errorf("tracking service: ReadTaskFrom %w", err)
	}

	if len(tasks) == 0 {
		return tasks, false, nil
	}

	hasMore := tasks[0].DatesCounter > pages
	return tasks, hasMore, nil
}

func (s *Services) CheckTask(ctx context.Context, itemID int64, checked bool) error {
	if err := s.store.Tracking.CheckTask(ctx, itemID, checked); err != nil {
		return fmt.Errorf("tracking service: CheckTask(itemID: %d, checked: %v) %w", itemID, checked, err)
	}

	return nil
}

func (s *Services) ReadUserTracker(ctx context.Context, userID uuid.UUID) (*tracking.TrackerModel, error) {
	tracker, err := s.store.Tracking.ReadUserTracker(ctx, userID)
	if err != nil {
		return nil, fmt.Errorf("tracking service: ReadUserTracker(uid: %d) %w", userID, err)
	}

	return tracker, nil
}

func (s *Services) DeleteUserTracker(ctx context.Context, userID uuid.UUID) error {
	if err := s.store.Tracking.DeleteUserTracker(ctx, userID); err != nil {
		return fmt.Errorf("tracking service: DeleteUserTracker(uid: %d) %w", userID, err)
	}
	return nil
}

func (s *Services) MoveTrackerDays(ctx context.Context, userID uuid.UUID, days int) error {
	if err := s.store.CreateTX(ctx); err != nil {
		return fmt.Errorf("tracking service: MoveTrackerDays(uid: %d, days: %d) %w", userID, days, err)
	}
	defer s.store.RollbackTX(ctx)

	if err := s.store.Tracking.MoveTaskDays(ctx, userID, days); err != nil {
		return fmt.Errorf("tracking service: MoveTrackerDays(uid: %d, days: %d) %w", userID, days, err)
	}

	if err := s.store.Tracking.MoveTrackerDays(ctx, userID, days); err != nil {
		return fmt.Errorf("tracking service: MoveTrackerDays(uid: %d, days: %d) %w", userID, days, err)
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
		return fmt.Errorf("tracking service: MoveTrackerWithStart(uid: %d, New Start: %s) %w", userID, newStartRaw, err)
	}
	defer s.store.RollbackTX(ctx)

	oldStart, err := s.store.Tracking.GetTrackerStart(ctx, userID)
	if err != nil {
		return fmt.Errorf("tracking service: MoveTrackerWithStart(uid: %d, New Start: %s) %w", userID, newStartRaw, err)
	}

	newStart, err := time.Parse("2006-01-02", newStartRaw)
	if err != nil {
		return fmt.Errorf("tracking service: MoveTrackerWithStart(uid: %d, New Start: %s) %w", userID, newStartRaw, err)
	}

	days := int(newStart.Sub(oldStart).Hours() / 24)
	if err := s.store.Tracking.MoveTaskDays(ctx, userID, days); err != nil {
		return fmt.Errorf("tracking service: MoveTrackerWithStart(uid: %d, New Start: %s) %w", userID, newStart, err)
	}

	if err := s.store.Tracking.MoveTrackerDays(ctx, userID, days); err != nil {
		return fmt.Errorf("tracking service: MoveTrackerWithStart(uid: %d, New Start: %s) %w", userID, newStart, err)
	}

	s.store.CommitTX(ctx)
	return nil
}

func (s *Services) MoveTracker(ctx context.Context, userID uuid.UUID, start, end string) error {
	if start == "" && end == "" {
		return errors.New("tracking service: MoveTracker: Both start and end are empty")
	}

	if err := s.store.CreateTX(ctx); err != nil {
		return fmt.Errorf("tracking service: MoveTracker(uid: %d, start: %s, end: %s) %w", userID, start, end, err)
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
			return fmt.Errorf("tracking service: MoveTracker(uid: %d, start: %s, end: %s) %w", userID, start, end, err)
		}
	} else {
		startTime, err = s.store.Tracking.GetTrackerStart(ctx, userID)
		if err != nil {
			return fmt.Errorf("tracking service: MoveTracker(uid: %d, start: %s, end: %s) %w", userID, start, end, err)
		}
	}

	if end != "" {
		endTime, err = time.Parse("2006-01-02", end)
		if err != nil {
			return fmt.Errorf("tracking service: MoveTracker(uid: %d, start: %s, end: %s) %w", userID, start, end, err)
		}
	} else {
		endTime, err = s.store.Tracking.GetTrackerEnd(ctx, userID)
		if err != nil {
			return fmt.Errorf("tracking service: MoveTracker(uid: %d, start: %s, end: %s) %w", userID, start, end, err)
		}
	}

	if endTime.Before(startTime) {
		return fmt.Errorf("tracking service: MoveTracker End %s was after Start %s", end, start)
	}

	if err := s.store.Tracking.MoveTracker(ctx, userID, start, end); err != nil {
		return fmt.Errorf("tracking service: MoveTracker(uid: %d, start: %s, end: %s) %w", userID, start, end, err)
	}

	if err := s.store.Tracking.MoveTasks(ctx, userID, start, end); err != nil {
		return fmt.Errorf("tracking service: MoveTracker(uid: %d, start: %s, end: %s) %w", userID, start, end, err)
	}

	s.store.CommitTX(ctx)
	return nil
}

func (s *Services) CreateTracker(ctx context.Context, userID uuid.UUID, planID int, startRaw, endRaw string) error {
	start, err := time.Parse("2006-01-02", startRaw)
	if err != nil {
		return fmt.Errorf("tracking service: createTracker(%d) could not transform start to date %w", userID, err)
	}

	end, err := time.Parse("2006-01-02", endRaw)
	if err != nil {
		return fmt.Errorf("tracking service: createTracker(%d) could not transform end to date %w", userID, err)
	}

	if i := end.Compare(start); i <= 0 {
		return fmt.Errorf("tracking service: CreateTracker(%d): start: %s needs to be before end: %s", userID, startRaw, endRaw)
	}

	if err = s.store.CreateTX(ctx); err != nil {
		return fmt.Errorf("tracking service: createTracker(%d) could not start tx %w", userID, err)
	}
	defer s.store.RollbackTX(ctx)

	err = s.store.Tracking.DeleteUserTracker(ctx, userID)
	if err != nil {
		return fmt.Errorf("tracking service: CreateTracker(userID: %d, start: %s, end: %s) could not delete trackers Table %w", userID, startRaw, endRaw, err)
	}

	trackerID, err := s.store.Tracking.CreateTracker(ctx, userID, startRaw, endRaw)
	if err != nil {
		return fmt.Errorf("tracking service: CreateTracker(userID: %d, planID: %d, start: %s, end: %s) %w", userID, planID, startRaw, endRaw, err)
	}

	err = s.store.Tracking.CreateTasks(ctx, trackerID, planID, startRaw, endRaw)
	if err != nil {
		return fmt.Errorf("tracking service: CreateTracker(userID: %d, planID: %d, start: %s, end: %s) %w", userID, planID, startRaw, endRaw, err)
	}

	err = s.store.CommitTX(ctx)
	if err != nil {
		return fmt.Errorf("tracking service: CreateTracker(userID: %d, planID: %d, start: %s, end: %s) %w", userID, planID, startRaw, endRaw, err)
	}

	return nil
}
