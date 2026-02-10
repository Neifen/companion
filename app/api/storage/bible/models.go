package bible

type ChapterModel struct {
	ID          int16   `db:"id"`
	BookName    string  `db:"book_name"`
	BookID      int16   `db:"book_id"`
	ChapterNr   int16   `db:"chapter_nr"`
	WordCount   int16   `db:"word_count"`
	Verses      []int16 `db:"verses"`
	VersesTitle string  `db:"verses_title"`
}

type BibleChapter struct {
	Book       string
	WholeBook  bool
	Chapter    int16
	VerseStart int16
	VerseEnd   int16
}

type VerseModel struct {
	ID        int16 `db:"id"`
	VerseNr   int16 `db:"verse_nr"`
	Length    int16 `db:"length"`
	ChapterID int16 `db:"chapter_fk"`
}
