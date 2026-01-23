// Package services cointains the business logic for the api
package services

// here comes the renderer markup -> html (maybe put it in view?)
import (
	"context"

	"github.com/gomarkdown/markdown"
	"github.com/gomarkdown/markdown/html"
	"github.com/gomarkdown/markdown/parser"
	"github.com/microcosm-cc/bluemonday"
	"github.com/neifen/htmx-login/app/api/storage/companions"
)

func GetCompanion(ctx context.Context, db *companions.CompanionsStore, planID int64, chapterID int16) {
	companions, err := db.ReadChaptersCompanion(ctx, planID, chapterID)
	if err != nil {
		return // todo this should be an error
	}

	// todo here check if 'companions' has html or just markdown
	GetHTMLFromMarkdown([]byte(companions))
}

func GetHTMLFromMarkdown(md []byte) []byte {
	p := parser.New()

	htmlFlags := html.CommonFlags
	opts := html.RendererOptions{Flags: htmlFlags}
	r := html.NewRenderer(opts)

	unsafe := markdown.ToHTML(md, p, r)
	return bluemonday.UGCPolicy().SanitizeBytes(unsafe)
}

func TestMarkdown() string {
	md := []byte(`
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
	`)

	p := parser.New()

	htmlFlags := html.CommonFlags
	opts := html.RendererOptions{Flags: htmlFlags}
	r := html.NewRenderer(opts)

	unsafe := markdown.ToHTML(md, p, r)
	return string(bluemonday.UGCPolicy().SanitizeBytes(unsafe))
}
