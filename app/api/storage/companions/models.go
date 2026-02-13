package companions

type CompanionModel struct {
	ID            int    `db:"id"`
	Title         string `db:"title"`
	Author        string `db:"author"`
	CompanionType string `db:"companion_type"`
	IsDefault     bool   `db:"is_default"`
}
type CompanionItemModel struct {
	ID              int64  `db:"id"`
	BookID          *int16 `db:"book_fk"`
	ChapterStartID  *int16 `db:"chapter_start_fk"`
	ChapterEndID    *int16 `db:"chapter_end_fk"`
	CompanionSource string `db:"companion_src"`
	Markup          string `db:"markup"`
	CompanionID     int    `db:"companion_fk"`
}

func NewCompanionItemByBook(bookID int16, companionSource, markup string) *CompanionItemModel {
	return &CompanionItemModel{
		BookID:          &bookID,
		CompanionSource: companionSource,
		Markup:          markup}
}

func NewCompanionItemByChapter(chapterStart, chapterEnd int16, companionSource, markup string) *CompanionItemModel {
	return &CompanionItemModel{
		ChapterStartID:  &chapterStart,
		ChapterEndID:    &chapterEnd,
		CompanionSource: companionSource,
		Markup:          markup}
}
