package view

// here comes the renderer markup -> html (maybe put it in view?)
import (
	"github.com/gomarkdown/markdown"
	"github.com/gomarkdown/markdown/html"
	"github.com/gomarkdown/markdown/parser"
	"github.com/microcosm-cc/bluemonday"
)

func RenderMarkdown() string {

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
