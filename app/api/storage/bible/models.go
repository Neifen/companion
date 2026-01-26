package bible

type ChapterModel struct {
	ID               int16  `db:"id"`
	BookName         string `db:"book_name"`
	BookID           int16  `db:"book_id"`
	ChapterNr        int16  `db:"chapter_nr"`
	ChapterWordCount int16  `db:"chapter_word_count"`
}
