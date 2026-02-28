package services

import (
	"slices"
	"testing"

	"github.com/neifen/companion/app/api/storage/bible"
)

func TestParseVerse(t *testing.T) {
	book, err := parseVerses("John", "10", "1")
	if err != nil {
		t.Errorf("John 10:1 didn't work out: \n%+v\n", err)
	}

	exp := bible.BibleChapter{Book: "John", Chapter: 10, VerseStart: 1, VerseEnd: 1}
	if book != exp {
		t.Errorf("Expected Book: %v, instead was %v", exp, book)
	}

	book, err = parseVerses("John", " 8", "44-99")
	if err != nil {
		t.Errorf("John 8:44-99 didn't work out: \n%+v\n", err)
	}

	exp = bible.BibleChapter{Book: "John", Chapter: 8, VerseStart: 44, VerseEnd: 99}
	if book != exp {
		t.Errorf("Expected Book: %v, instead was %v", exp, book)
	}
}

func TestParseChapter(t *testing.T) {
	book, hasV, err := parseChapter("Exodus", "10-12, 1,33")
	if err != nil {
		t.Errorf("Exodus 10-12,1,33 didn't work out: \n%+v\n", err)
	}
	if hasV {
		t.Error("Expected HasV to be false, was true")
	}

	exp := []bible.BibleChapter{{Book: "Exodus", Chapter: 10}, {Book: "Exodus", Chapter: 11}, {Book: "Exodus", Chapter: 12},
		{Book: "Exodus", Chapter: 1}, {Book: "Exodus", Chapter: 33}}
	if !slices.Equal(book, exp) {
		t.Errorf("Expected Book: %v, instead was %v", exp, book)
	}

	book, hasV, err = parseChapter("Exodus", "  8   :  44  , 4:1-9  ,   9  -   11")
	if err != nil {
		t.Errorf("Genesis 8,4,9-11 didn't work out: \n%+v\n", err)
	}
	if !hasV {
		t.Error("Expected HasV to be true, was false")
	}

	exp = []bible.BibleChapter{{Book: "Exodus", Chapter: 8, VerseStart: 44, VerseEnd: 44},
		{Book: "Exodus", Chapter: 4, VerseStart: 1, VerseEnd: 9},
		{Book: "Exodus", Chapter: 9}, {Book: "Exodus", Chapter: 10}, {Book: "Exodus", Chapter: 11}}
	if !slices.Equal(book, exp) {
		t.Errorf("Expected Book: %v, instead was %v", exp, book)
	}
}

func TestParseBook(t *testing.T) {
	book, hasV, err := parseBook("Genesis")
	if err != nil {
		t.Errorf("Genesis didn't work out: \n%+v\n", err)
	}
	if hasV {
		t.Error("Expected HasV to be false, was true")
	}

	exp := []bible.BibleChapter{{Book: "Genesis", WholeBook: true}}
	if !slices.Equal(book, exp) {
		t.Errorf("Expected Book: %v, instead was %v", exp, book)
	}

	book, hasV, err = parseBook("Genesis  : 8  , 4  ,    9  -   11")
	if err != nil {
		t.Errorf("Genesis 8,4,9-11 didn't work out: \n%+v\n", err)
	}
	if hasV {
		t.Error("Expected HasV to be false, was true")
	}

	exp = []bible.BibleChapter{{Book: "Genesis", Chapter: 8}, {Book: "Genesis", Chapter: 4},
		{Book: "Genesis", Chapter: 9}, {Book: "Genesis", Chapter: 10}, {Book: "Genesis", Chapter: 11}}
	if !slices.Equal(book, exp) {
		t.Errorf("Expected Book: %v, instead was %v", exp, book)
	}

	book, hasV, err = parseBook("Genesis: 5:1, 3:3-6")
	if err != nil {
		t.Errorf("Genesis 5:1, 3:3-6 didn't work out: \n%+v\n", err)
	}
	if !hasV {
		t.Error("Expected HasV to be true, was false")
	}

	exp = []bible.BibleChapter{{Book: "Genesis", Chapter: 5, VerseStart: 1, VerseEnd: 1},
		{Book: "Genesis", Chapter: 3, VerseStart: 3, VerseEnd: 6}}
	if !slices.Equal(book, exp) {
		t.Errorf("Expected Book: %v, instead was %v", exp, book)
	}
}
