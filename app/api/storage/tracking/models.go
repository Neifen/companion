package tracking

import "time"

//todo: change TrackerModel to TaskModel

type TrackerModel struct {
	ID        int64     `sql:"id"`
	Read      bool      `sql:"read"`
	ReadBy    time.Time `sql:"read_by_"`
	BookName  string    `sql:"book_name"`
	BookID    int16     `sql:"book_id"`
	ChapterNr int16     `sql:"chapter"`
	Verses    string    `sql:"verses"`
	ChapterID int16     `sql:"chapter_id"`
}

//todo: change fromDate to startDate, and ToDate to EndDate
//todo: change TrackerSettings to trackerModel

type TrackerSettings struct {
	ID       int64     `sql:"id"`
	UserID   int       `sql:"user_fk"`
	FromDate time.Time `sql:"start_date"`
	ToDate   time.Time `sql:"end_date"`
}
