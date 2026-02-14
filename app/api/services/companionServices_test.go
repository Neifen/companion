package services_test

import (
	"testing"

	"github.com/gomarkdown/markdown"
	"github.com/gomarkdown/markdown/html"
	"github.com/gomarkdown/markdown/parser"
	"github.com/microcosm-cc/bluemonday"
	"github.com/neifen/htmx-login/app/api/storage/companions"
)

func TestGetCompanionByBook(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: \n%+v\n", err)
	}

	if err := clearCompanions(db); err != nil {
		t.Fatalf("Clearing Companions failed: \n%+v\n", err)
	}

	companion := companions.CompanionModel{Title: "Test Companion", Author: "Nate", CompanionType: "todo: figurethatout", IsDefault: false}
	companionID, err := serv.CreateCompanion(t.Context(), defaultPlanID, companion)
	if err != nil {
		t.Fatalf("Could not Create Companion: \n%+v\n", err)
	}

	// Deuteronomy is 5, chapterIDs range from 154-187
	companionItem := *companions.NewCompanionItemByBook(6, "By book 6 (joshua)", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 6: \n%+v\n", err)
	}

	companionItem = *companions.NewCompanionItemByBook(5, "By book 5 (deuteronomy)", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 5: \n%+v\n", err)
	}

	companionRes, err := serv.GetAvailableCompanions(t.Context(), defaultPlanID)
	if err != nil {
		t.Errorf("Could not Read available companions: \n%+v\n", err)
	}
	if len(companionRes) != 1 {
		t.Errorf("Expected one companion result instead was %d: %v", len(companionRes), companionRes)
	}
	if len(companionRes) == 1 && (companionRes[0].Author != "Nate" || companionRes[0].Title != "Test Companion" || companionRes[0].CompanionType != "todo: figurethatout" || companionRes[0].IsDefault) {
		t.Errorf("Expected Title 'Test Companion', Author 'Nate', type 'figurethatout' and Isdefault false, instead was: %v", companionRes[0])
	}

	page, err := serv.GetCompanionPage(t.Context(), int64(companionID), 170)
	if err != nil {
		t.Errorf("Could not Read companion Item: \n%+v\n", err)
	}

	expected := constMarkupToHTML()
	if page.HTML != expected {
		t.Errorf("Expected %s instead was %s", expected, page.HTML)
	}

	if page.CompanionSource != "By book 5 (deuteronomy)" {
		t.Errorf("Expected to get item by book 5 (deuteronomy), instead was %s", page.CompanionSource)
	}

	t.Cleanup(func() {
		err = clearCompanions(db)
		if err != nil {
			t.Fatalf("Clearing Companions failed: \n%+v\n", err)
		}
		defer serv.Close()
	})
}

func TestGetCompanionByChapter(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: \n%+v\n", err)
	}

	if err := clearCompanions(db); err != nil {
		t.Fatalf("Clearing Companions failed: \n%+v\n", err)
	}

	companion := companions.CompanionModel{Title: "Test Companion", Author: "Nate", CompanionType: "figurethatout", IsDefault: false}
	companionID, err := serv.CreateCompanion(t.Context(), defaultPlanID, companion)
	if err != nil {
		t.Fatalf("Could not Create Companion: \n%+v\n", err)
	}

	// Deuteronomy is 5, chapterIDs range from 154-187
	companionItem := *companions.NewCompanionItemByBook(5, "By book 6 (deuteronomy)", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 5: \n%+v\n", err)
	}

	companionItem = *companions.NewCompanionItemByBook(6, "By book 6 (joshua)", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 5: \n%+v\n", err)
	}

	companionItem = *companions.NewCompanionItemByChapter(169, 171, "specific chapters", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 5: \n%+v\n", err)
	}

	companionRes, err := serv.GetAvailableCompanions(t.Context(), defaultPlanID)
	if err != nil {
		t.Errorf("Could not Read available companions: \n%+v\n", err)
	}
	if len(companionRes) != 1 {
		t.Errorf("Expected one companion result instead was %d: %v", len(companionRes), companionRes)
	}
	if len(companionRes) == 1 && (companionRes[0].Author != "Nate" || companionRes[0].Title != "Test Companion" || companionRes[0].CompanionType != "figurethatout" || companionRes[0].IsDefault) {
		t.Errorf("Expected Title 'Test Companion', Author 'Nate', type 'figurethatout' and Isdefault false, instead was: %v", companionRes[0])
	}

	page, err := serv.GetCompanionPage(t.Context(), int64(companionID), 170)
	if err != nil {
		t.Errorf("Could not Read companion Item: \n%+v\n", err)
	}

	expected := constMarkupToHTML()
	if page.HTML != expected {
		t.Errorf("Expected %s instead was %s", expected, page.HTML)
	}

	if page.CompanionSource != "specific chapters" {
		t.Errorf("Expected to get item by specific chapter, instead was %s", page.CompanionSource)
	}

	t.Cleanup(func() {
		err = clearCompanions(db)
		if err != nil {
			t.Fatalf("Clearing Companions failed: \n%+v\n", err)
		}
		defer serv.Close()
	})
}

func TestGetCompanionOutsideChapter(t *testing.T) {
	serv, db, err := newTestService()
	if err != nil {
		t.Fatalf("Could not Set up db: \n%+v\n", err)
	}

	if err := clearCompanions(db); err != nil {
		t.Fatalf("Clearing Companions failed: \n%+v\n", err)
	}

	companion := companions.CompanionModel{Title: "Test Companion", Author: "Nate", CompanionType: "figurethatout", IsDefault: false}
	companionID, err := serv.CreateCompanion(t.Context(), defaultPlanID, companion)
	if err != nil {
		t.Fatalf("Could not Create Companion: \n%+v\n", err)
	}

	// Deuteronomy is 5, chapterIDs range from 154-187
	companionItem := *companions.NewCompanionItemByBook(5, "By book 5 (deuteronomy)", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 5: \n%+v\n", err)
	}

	companionItem = *companions.NewCompanionItemByBook(6, "By book 6 (joshua)", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 5: \n%+v\n", err)
	}

	companionItem = *companions.NewCompanionItemByChapter(169, 171, "specific chapters", testMarkup)
	err = serv.AddCompanionItem(t.Context(), companionID, companionItem)
	if err != nil {
		t.Fatalf("Could not Create Item 5: \n%+v\n", err)
	}

	companionRes, err := serv.GetAvailableCompanions(t.Context(), defaultPlanID)
	if err != nil {
		t.Errorf("Could not Read available companions: \n%+v\n", err)
	}
	if len(companionRes) != 1 {
		t.Errorf("Expected one companion result instead was %d: %v", len(companionRes), companionRes)
	}
	if len(companionRes) == 1 && (companionRes[0].Author != "Nate" || companionRes[0].Title != "Test Companion" || companionRes[0].CompanionType != "figurethatout" || companionRes[0].IsDefault) {
		t.Errorf("Expected Title 'Test Companion', Author 'Nate', type 'figurethatout' and Isdefault false, instead was: %v", companionRes[0])
	}

	page, err := serv.GetCompanionPage(t.Context(), int64(companionID), 168)
	if err != nil {
		t.Errorf("Could not Read companion Item: \n%+v\n", err)
	}

	expected := constMarkupToHTML()
	if page.HTML != expected {
		t.Errorf("Expected %s instead was %s", expected, page.HTML)
	}

	if page.CompanionSource != "By book 5 (deuteronomy)" {
		t.Errorf("Expected to get item by book 6 (joshua) chapter, instead was %s", page.CompanionSource)
	}

	t.Cleanup(func() {
		err = clearCompanions(db)
		if err != nil {
			t.Fatalf("Clearing Companions failed: \n%+v\n", err)
		}
		defer serv.Close()
	})
}

const testMarkup = `
# Title one
## title two
### title three
This is just a little text, let's see what happens.

**this is bold**, *this is italic*

> this a quote

1. a
2. list
3. bro

- an
- other
- list
---

` + "`code`" + `

` + "```json" + `
	{"a":"blockofcode"}
` + "```" + `

[a link](https://www.omfgdogs.com)

![an image](https://placehold.co/400)
	`

func constMarkupToHTML() string {
	md := []byte(testMarkup)

	p := parser.New()

	htmlFlags := html.CommonFlags
	opts := html.RendererOptions{Flags: htmlFlags}
	r := html.NewRenderer(opts)

	unsafe := markdown.ToHTML(md, p, r)
	return string(bluemonday.UGCPolicy().SanitizeBytes(unsafe))
}
