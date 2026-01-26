package tracking

import "time"

type TaskModel struct {
	ID           int64     `db:"id"`
	Read         bool      `db:"read"`
	ReadBy       time.Time `db:"read_by"`
	BookName     string    `db:"book_name"`
	BookID       int16     `db:"book_id"`
	ChapterNr    int16     `db:"chapter_nr"`
	Verses       *string   `db:"verses"` //nullable
	ChapterID    int16     `db:"chapter_id"`
	DatesCounter int       `db:"dates_counter"`
}

type TrackerModel struct {
	ID        int64     `db:"id"`
	UserID    int       `db:"user_fk"`
	StartDate time.Time `db:"start_date"`
	EndDate   time.Time `db:"end_date"`
}
