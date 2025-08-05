package entities

type Bible struct {
	Books [66]*Book
}

type Book struct {
	Title    string
	Chapters []*Chapter
}

type Chapter struct {
	Number    int16
	ID        int16
	WordCount int16
}
