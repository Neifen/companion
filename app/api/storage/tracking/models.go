package tracking

import "time"

type TrackerModel struct {
	ID        int64     `sql:"chapter_id"`
	Read      bool      `sql:"read"`
	ReadBy    time.Time `sql:"read_by_"`
	BookName  string    `sql:"book_name"`
	BookID    int16     `sql:"book_id"`
	ChapterNr int16     `sql:"chapter"`
	Verses    string    `sql:"verses"`
	ChapterID int16     `sql:"chapter_id"`
}

type TrackerSettings struct {
	ID       int64     `sql:"id"`
	FromDate time.Time `sql:"from_date"`
	ToDate   time.Time `sql:"to_date"`
}
