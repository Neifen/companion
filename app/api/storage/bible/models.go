package bible

type ChapterModel struct {
	ID               int16  `sql:"chapter_id"`
	BookName         string `sql:"book_name"`
	BookID           int16  `sql:"book_id"`
	ChapterNr        int16  `sql:"chapter_nr"`
	ChapterWordCount int16  `sql:"chapter_word_count"`
}
