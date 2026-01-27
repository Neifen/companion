package services_test

import (
	"testing"
)

func TestCreatePlan(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: %s", err)
	}

	if err := clearPlans(db); err != nil {
		t.Fatalf("Clearing Plans failed: %s", err)
	}

	justBooks := []string{"Genesis", "1 John", "jeremiah"}
	err = serv.CreateNewPlan(t.Context(), "Just Books", "This Plan contains only whole books", justBooks, -1)
	if err != nil {
		t.Errorf("Justbook failed with error: %s", err)
	}
	// todo: check

	booksAndChapter := []string{"Genesis: 1,4", "Genesis: 2-50", "jeremiah"}
	err = serv.CreateNewPlan(t.Context(),
		"Books and Chapter",
		"This plan contains books and whole chapters as well as chapter ranges",
		booksAndChapter,
		-1)
	if err != nil {
		t.Errorf("BooksAndChapter failed with error: %s", err)
	}
	// todo: check

	t.Cleanup(func() {
		err = clearPlans(db)
		if err != nil {
			t.Fatalf("Clearing Plans failed: %s", err)
		}
		defer serv.Close()
	})
}
