package services_test

import (
	"testing"
)

func TestCreatePlan(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: \n%+v\n", err)
	}

	if err := clearPlans(db); err != nil {
		t.Fatalf("Clearing Plans failed: \n%+v\n", err)
	}

	justBooks := []string{"Genesis", "1 John", "jeremiah"}
	planID, err := serv.CreateNewPlan(t.Context(), "Just Books", "This Plan contains only whole books", justBooks, -1)
	if err != nil {
		t.Errorf("Justbook failed with error: \n%+v\n", err)
	}

	chapters, err := serv.GetPlansChapters(t.Context(), planID)
	if err != nil {
		t.Errorf("Read Justbook failed with error: \n%+v\n", err)
	}

	countGenesis := 0
	countJohn := 0
	countJeremiah := 0

ChapterLoop:
	for _, ch := range chapters {
		switch ch.BookName {
		case "Genesis":
			countGenesis++
			if countJohn > 0 || countJeremiah > 0 {
				t.Errorf("Genesis needs to come back before 1 John and Jeremiah")
				break ChapterLoop
			}
		case "1 John":
			countJohn++
			if countJeremiah > 0 {
				t.Errorf("1 John needs to come back before Jeremiah")
				break ChapterLoop
			}
		case "Jeremiah":
			countJeremiah++
		default:
			t.Errorf("Invalid Book name: %s", ch.BookName)
			break ChapterLoop
		}
	}

	if countGenesis != 50 {
		t.Errorf("Needed to have 50 Genesis chapters inserted, instead was: %d", countGenesis)
	}
	if countJohn != 5 {
		t.Errorf("Needed to have 5 1.John chapters inserted, instead was: %d", countJohn)
	}
	if countJeremiah != 52 {
		t.Errorf("Needed to have 52 Jeremiah chapters inserted, instead was: %d", countJeremiah)
	}

	booksAndChapter := []string{"Genesis: 1,4", "Genesis: 2-50", "jeremiah"}
	planID, err = serv.CreateNewPlan(t.Context(),
		"Books and Chapter",
		"This plan contains books and whole chapters as well as chapter ranges",
		booksAndChapter,
		-1)
	if err != nil {
		t.Errorf("BooksAndChapter failed with error: \n%+v\n", err)
	}

	chapters, err = serv.GetPlansChapters(t.Context(), planID)
	if err != nil {
		t.Errorf("Read Justbook failed with error: \n%+v\n", err)
	}

	countGenesis = 0
	countJeremiah = 0

Chapter2Loop:
	for i, ch := range chapters {
		if i < 2 {
			if ch.BookName != "Genesis" || (ch.ChapterNr != 1 && ch.ChapterNr != 4) {
				t.Errorf("Needs to start with Genesis 1 and 4, instead was: %s %d", ch.BookName, ch.ChapterNr)
				break
			}
			continue
		}

		switch ch.BookName {
		case "Genesis":
			countGenesis++
			if countJeremiah > 0 {
				t.Errorf("Genesis needs to come back before and Jeremiah")
				break Chapter2Loop
			}
		case "Jeremiah":
			countJeremiah++
		default:
			t.Errorf("Invalid Book name: %s", ch.BookName)
			break Chapter2Loop
		}
	}

	if countGenesis != 49 {
		t.Errorf("Needed to have 49 Genesis chapters inserted, instead was: %d", countGenesis)
	}
	if countJeremiah != 52 {
		t.Errorf("Needed to have 52 Jeremiah chapters inserted, instead was: %d", countJeremiah)
	}

	booksChaptersAndVerses := []string{"Genesis: 1,4:12, 5:2-15", "Genesis: 2-50", "jeremiah"}
	planID, err = serv.CreateNewPlan(t.Context(),
		"Books and Chapter",
		"This plan contains books and whole chapters as well as chapter ranges",
		booksChaptersAndVerses,
		-1)
	if err != nil {
		t.Errorf("Books/Chapters/Verses failed with error: \n%+v\n", err)
	}

	chapters, err = serv.GetPlansChapters(t.Context(), planID)
	if err != nil {
		t.Errorf("Read Justbook failed with error: \n%+v\n", err)
	}

	countGenesis = 0
	countJeremiah = 0

Chapter3Loop:
	for i, ch := range chapters {
		if i == 0 {
			if ch.BookName != "Genesis" || (ch.ChapterNr != 1) {
				t.Errorf("Expected Genesis 1, instead was: %s %d", ch.BookName, ch.ChapterNr)
				break
			}
			if len(ch.Verses) != 0 || ch.VersesTitle != "" {
				t.Errorf("Genesis 1 expected without verses, instead was: %v %s", ch.Verses, ch.VersesTitle)
				break
			}

			if ch.WordCount != 818 {
				t.Errorf("Genesis 1 should be 818 long, instead was: %d", ch.WordCount)
				break
			}
			continue
		}

		if i == 1 {
			if ch.BookName != "Genesis" || (ch.ChapterNr != 4) {
				t.Errorf("Expected Genesis 4, instead was: %s %d", ch.BookName, ch.ChapterNr)
				break
			}
			if len(ch.Verses) != 1 || ch.Verses[0] != 92 || ch.VersesTitle != "Genesis 4:12" {
				t.Errorf("Genesis 4 expected with verse 12, instead was: %v %s", ch.Verses, ch.VersesTitle)
				break
			}
			if ch.WordCount != 26 {
				t.Errorf("Genesis 4:12 should be 26 long, instead was: %d", ch.WordCount)
				break
			}
			continue
		}

		if i == 2 {
			if ch.BookName != "Genesis" || (ch.ChapterNr != 5) {
				t.Errorf("Expected Genesis 5, instead was: %s %d", ch.BookName, ch.ChapterNr)
				break
			}
			if len(ch.Verses) != 14 || ch.Verses[0] != 108 || ch.Verses[13] != 121 || ch.VersesTitle != "Genesis 5:2-15" {
				t.Errorf("Genesis 5 expected with verses 2-15, instead was: %v %s", ch.Verses, ch.VersesTitle)
				break
			}
			if ch.WordCount != 227 {
				t.Errorf("Genesis 5:2-15 should be 227 long, instead was: %d", ch.WordCount)
				break
			}
			continue
		}

		switch ch.BookName {
		case "Jeremiah":
			countJeremiah++
			continue
		case "Genesis":
			countGenesis++
			continue
		default:
			t.Errorf("Invalid Book name: %s", ch.BookName)
			break Chapter3Loop
		}
	}

	if countGenesis != 49 {
		t.Errorf("Needed to have 49 Genesis chapters inserted, instead was: %d", countGenesis)
	}
	if countJeremiah != 52 {
		t.Errorf("Needed to have 52 Jeremiah chapters inserted, instead was: %d", countJeremiah)
	}

	t.Cleanup(func() {
		err = clearPlans(db)
		if err != nil {
			t.Fatalf("Clearing Plans failed: \n%+v\n", err)
		}
		defer serv.Close()
	})
}

func TestCreatePlanSplitChapters(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: \n%+v\n", err)
	}

	if err := clearPlans(db); err != nil {
		t.Fatalf("Clearing Plans failed: \n%+v\n", err)
	}

	justBooks := []string{"Genesis", "1 John", "jeremiah"}
	planID, err := serv.CreateNewPlan(t.Context(), "Just Books", "This Plan contains only whole books", justBooks, 2)
	if err != nil {
		t.Errorf("Justbook failed with error: \n%+v\n", err)
	}

	chapters, err := serv.GetPlansChapters(t.Context(), planID)
	if err != nil {
		t.Errorf("Read Justbook failed with error: \n%+v\n", err)
	}

	countGenesis := 0
	countJohn := 0
	countJeremiah := 0

ChapterLoop:
	for _, ch := range chapters {
		switch ch.BookName {
		case "Genesis":
			countGenesis++
			if countJohn > 0 || countJeremiah > 0 {
				t.Errorf("Genesis needs to come back before 1 John and Jeremiah")
				break ChapterLoop
			}
		case "1 John":
			countJohn++
			if countJeremiah > 0 {
				t.Errorf("1 John needs to come back before Jeremiah")
				break ChapterLoop
			}
		case "Jeremiah":
			countJeremiah++
		default:
			t.Errorf("Invalid Book name: %s", ch.BookName)
			break ChapterLoop
		}
	}

	if countGenesis != 51 {
		t.Errorf("Needed to have 51 (50+ replace 1 with 2) Genesis chapters inserted, instead was: %d", countGenesis)
	}
	if countJohn != 5 {
		t.Errorf("Needed to have 5 1.John chapters inserted, instead was: %d", countJohn)
	}
	if countJeremiah != 54 {
		t.Errorf("Needed to have 54 (52 + replace 1 with 3) Jeremiah chapters inserted, instead was: %d", countJeremiah)
	}

	booksAndChapter := []string{"Genesis: 1,4", "Genesis: 2-50", "jeremiah"}
	planID, err = serv.CreateNewPlan(t.Context(),
		"Books and Chapter",
		"This plan contains books and whole chapters as well as chapter ranges",
		booksAndChapter,
		3)
	if err != nil {
		t.Errorf("BooksAndChapter failed with error: \n%+v\n", err)
	}

	chapters, err = serv.GetPlansChapters(t.Context(), planID)
	if err != nil {
		t.Errorf("Read Justbook failed with error: \n%+v\n", err)
	}

	countGenesis = 0
	countJeremiah = 0
Chapter2Loop:
	for i, ch := range chapters {
		if i < 2 {
			if ch.BookName != "Genesis" || (ch.ChapterNr != 1 && ch.ChapterNr != 4) {
				t.Errorf("Needs to start with Genesis 1 and 4, instead was: %s %d", ch.BookName, ch.ChapterNr)
				break
			}
			continue
		}

		switch ch.BookName {
		case "Genesis":
			countGenesis++
			if countJeremiah > 0 {
				t.Errorf("Genesis needs to come back before and Jeremiah")
				break Chapter2Loop
			}
		case "Jeremiah":
			countJeremiah++
		default:
			t.Errorf("Invalid Book name: %s", ch.BookName)
			break Chapter2Loop
		}
	}

	if countGenesis != 49 {
		t.Errorf("Needed to have 49 Genesis chapters inserted, instead was: %d", countGenesis)
	}
	if countJeremiah != 52 {
		t.Errorf("Needed to have 52 Jeremiah chapters inserted, instead was: %d", countJeremiah)
	}

	booksAndChapter2 := []string{"Genesis: 1,4", "Genesis: 2-50", "jeremiah"}
	planID, err = serv.CreateNewPlan(t.Context(),
		"Books and Chapter",
		"This plan contains books and whole chapters as well as chapter ranges. Tested with a small cutRatio",
		booksAndChapter2,
		1.5)
	if err != nil {
		t.Errorf("BooksAndChapter failed with error: \n%+v\n", err)
	}

	chapters, err = serv.GetPlansChapters(t.Context(), planID)
	if err != nil {
		t.Errorf("Read Justbook failed with error: \n%+v\n", err)
	}

	countGenesis = 0
	countJeremiah = 0
Chapter3Loop:
	for i, ch := range chapters {
		if i < 2 {
			if ch.BookName != "Genesis" || (ch.ChapterNr != 1 && ch.ChapterNr != 4) {
				t.Errorf("Needs to start with Genesis 1 and 4, instead was: %s %d", ch.BookName, ch.ChapterNr)
				break
			}
			continue
		}

		switch ch.BookName {
		case "Genesis":
			countGenesis++
			if countJeremiah > 0 {
				t.Errorf("Genesis needs to come back before and Jeremiah")
				break Chapter3Loop
			}
		case "Jeremiah":
			countJeremiah++
		default:
			t.Errorf("Invalid Book name: %s", ch.BookName)
			break Chapter3Loop
		}
	}

	if countGenesis != 52 {
		t.Errorf("Needed to have 52 (49 + 1 replaced with 3) Genesis chapters inserted, instead was: %d", countGenesis)
	}
	if countJeremiah != 56 {
		t.Errorf("Needed to have 56 (52 + 1 replaced with 5) Jeremiah chapters inserted, instead was: %d", countJeremiah)
	}

	booksChaptersAndVerses := []string{"Genesis: 1,4:12, 5:2-15", "Genesis: 2-50", "jeremiah"}
	_, err = serv.CreateNewPlan(t.Context(),
		"Books and Chapter",
		"This plan contains books and whole chapters as well as chapter ranges",
		booksChaptersAndVerses,
		2)
	if err == nil {
		t.Errorf("Books/Chapters/Verses failed to throw error: \n%+v\n", err)
	}

	t.Cleanup(func() {
		err = clearPlans(db)
		if err != nil {
			t.Fatalf("Clearing Plans failed: \n%+v\n", err)
		}
		defer serv.Close()
	})
}
