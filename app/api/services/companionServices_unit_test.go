package services

import (
	"strings"
	"testing"
)

func TestMarkDown(t *testing.T) {

	type testEnv struct {
		input    string
		expected string
	}
	testMatrix := []testEnv{
		{"Hello<script>alert('XSS')</script>", "<p>Hello</p>"},
		{"[click me](javascript:alert('XSS'))", `<p><a title="XSS">click me</a>)</p>`},
		{"![alt text](javascript:alert('XSS'))", `<p><img alt="alt text" title="XSS"/>)</p>`},
		{`<img src="invalid.jpg">`, `<p><img src="invalid.jpg"></p>`},
		{`<img src="invalid.jpg" onerror="alert('XSS')">`, `<p><img src="invalid.jpg"></p>`},
		{"<javascript:alert('XSS')>asdf", "<p>asdf</p>"},
		{`[<img src="x" onerror=alert('XSS')>](https://example.com)`, `<p><a href="https://example.com" rel="nofollow"><img src="x"></a></p>`},
		{`![x](data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" onload="alert('XSS')"/>)`, `<p><img alt="x"/>”/&gt;)</p>`},
		{`
| Col |
|-----|
| <script>alert('XSS')</script> |`,
			`<table><thead><tr><th>Col</th></tr></thead><tbody><tr><td></td></tr></tbody></table>`},
	}

	for _, test := range testMatrix {
		result := getHTMLFromMarkdown(test.input)
		result = strings.TrimSpace(result)
		result = strings.ReplaceAll(result, "\r", "")
		result = strings.ReplaceAll(result, "\n", "")

		if test.expected != result {
			t.Errorf("Expected %s but was %s\n", test.expected, result)
		}

	}

}
