package parser_test

import (
	"testing"

	"github.com/matthewmueller/css/internal/parser"
	"github.com/matthewmueller/diff"
)

// var update = flag.Bool("update", false, "update golden files")

func equal(t *testing.T, input, expected string) {
	t.Helper()
	t.Run(input, func(t *testing.T) {
		t.Helper()
		actual := parser.Print(input, input)
		diff.TestString(t, actual, expected)
	})
}

// func equalAST(t *testing.T, input string, expected ast.Node) {
// 	t.Helper()
// 	t.Run(input, func(t *testing.T) {
// 		t.Helper()
// 		actual, err := parser.Parse(input, input)
// 		if err != nil {
// 			t.Fatal(err)
// 		}
// 		diff.Test(t, actual, expected)
// 	})
// }

// func equalFile(t *testing.T, path string) {
// 	t.Helper()
// 	t.Run(path, func(t *testing.T) {
// 		t.Helper()
// 		testdataPath := filepath.Join("..", "testdata")
// 		input, err := os.ReadFile(filepath.Join(testdataPath, path+".txt"))
// 		if err != nil {
// 			t.Fatal(err)
// 		}
// 		actual := parser.Print(path, string(input))
// 		expect, err := os.ReadFile(filepath.Join(testdataPath, path+".parse.txt"))
// 		if err != nil {
// 			if os.IsNotExist(err) {
// 				if err := os.WriteFile(filepath.Join(testdataPath, path+".parse.txt"), []byte(``), 0644); err != nil {
// 					t.Fatal(err)
// 				}
// 				return
// 			}
// 			t.Fatal(err)
// 		}
// 		if *update {
// 			if err := os.WriteFile(filepath.Join(testdataPath, path+".parse.txt"), []byte(actual), 0644); err != nil {
// 				t.Fatal(err)
// 			}
// 			return
// 		}
// 		diff.TestString(t, actual, string(expect))
// 	})
// }

func TestSample(t *testing.T) {
	equal(t, `body { margin: 0 }`, `body { margin: 0 }`)
	equal(t, "body { margin: 10px }", `body { margin: 10px }`)
	equal(t, "#id { color: green; }", `#id { color: green }`)
	equal(t, "h1 { font-weight: bold; }", `h1 { font-weight: bold }`)
	equal(t, "h1{}", `h1 {  }`)
	equal(t, ".class { background-color: #f00; }", `.class { background-color: #f00 }`)
	equal(t, "a:hover { text-decoration: underline; }", `a:hover { text-decoration: underline }`)
	equal(t, "div, span { color: blue; }", `div, span { color: blue }`)
	equal(t, "@media (max-width: 600px) { .responsive { display: none; }}", `@media (max-width: 600px) { .responsive { display: none } }`)
	equal(t, "@media (max-width: 600px) { .responsive, .cool { display: none; }}", `@media (max-width: 600px) { .responsive, .cool { display: none } }`)
	equal(t, "* { box-sizing: border-box; }", `* { box-sizing: border-box }`)
	equal(t, "img[alt='logo'] { width: 100px; }", `img[alt='logo'] { width: 100px }`)
	equal(t, `@font-face { font-family: 'MyFont'; src: local("some font"), url('myfont.woff2'); }`, `@font-face { font-family: 'MyFont'; src: local("some font"), url('myfont.woff2') }`)
	equal(t, "p::after { content: 'read more'; }", `p::after { content: 'read more' }`)
	equal(t, "ul > li { list-style-type: none; }", `ul > li { list-style-type: none }`)
	equal(t, ":root { --main-color: #06c; }", `:root { --main-color: #06c }`)
	equal(t, ".container::before, .container::after { content: ''; display: table; }", `.container::before, .container::after { content: ''; display: table }`)
	equal(t, "[data-theme='dark'] { background-color: #333; color: white; }", `[data-theme='dark'] { background-color: #333; color: white }`)
	equal(t, "header ~ footer { background-color: #eee; }", `header ~ footer { background-color: #eee }`)
	equal(t, "header + footer { background-color: #eee; }", `header + footer { background-color: #eee }`)
	equal(t, "@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }", `@keyframes fadeIn { from { opacity: 0 } to { opacity: 1 } }`)
	equal(t, "@keyframes identifier { 0% { top: 0; left: 0; } 68%, 72% { left: 50px; } 100% { top: 100px; left: 100%; } }", `@keyframes identifier { 0% { top: 0; left: 0 } 68%, 72% { left: 50px } 100% { top: 100px; left: 100% } }`)
	equal(t, `
		.box {
			background: red;
			font-family: 'Lato';
		}

		.box:hover, .circle {
			background: yellow;
		}
	`, `.box { background: red; font-family: 'Lato' }
.box:hover, .circle { background: yellow }`)
}

func TestComplex(t *testing.T) {
	t.Skip("TODO: support complex selectors")
	equal(t, "body:not(.no-js) .feature { display: block; }", ``)
	equal(t, "li:first-child + li { margin-top: 0; }", ``)
	equal(t, "a[href^='https://']:after { content: ' (external)'; }", ``)
	equal(t, "input[type='text']:focus { border-color: blue; }", ``)
	equal(t, "div > p::first-line { text-transform: uppercase; }", ``)
	equal(t, "table td:nth-of-type(odd) { background-color: #f9f9f9; }", ``)
	equal(t, "@media screen and (min-width: 768px) { .container { width: 750px; }}", ``)
	equal(t, ".tooltip:hover::after { content: attr(data-tooltip-text); color: #fff; }", ``)
	equal(t, "h1 + *[rel='up'] { margin-bottom: 0; }", ``)
	equal(t, "ul li:nth-last-child(-n+2) { font-weight: bold; }", ``)
	equal(t, ":is(.header, .footer) a:not(:hover) { text-decoration: none; }", ``)
	equal(t, ".box::before { content: '★'; position: absolute; }", ``)
	equal(t, "a:visited, a:link { color: #4a4a4a; }", ``)
	equal(t, "html[data-theme='dark'] .card { background-color: #333; color: white; }", ``)
	equal(t, "@supports (display: grid) { .grid { display: grid; }}", ``)
	equal(t, ":root { --main-bg-color: #0063e5; }", ``)
	equal(t, "body { background-color: var(--main-bg-color, #000); }", ``)
	equal(t, ".scroll-snap-container { scroll-snap-type: y mandatory; }", ``)
	equal(t, "@keyframes slidein { from { transform: translateX(0%); } to { transform: translateX(100%); }}", ``)
	equal(t, `
		.container {
			display: grid;
			grid-template-areas:
				"header"
				"main"
				"sidebar"
				"footer";
			grid-template-columns: 1fr;
			grid-template-rows: auto 1fr auto auto;
			gap: 10px;
		}
	`, ``)
	equal(t, `@media (min-width: 768px) {
		.container {
			grid-template-areas:
				"header header header"
				"main main sidebar"
				"footer footer footer";
			grid-template-columns: 2fr 1fr 1fr;
			grid-template-rows: auto 1fr auto;
		}
	}`, ``)
	equal(t, `audio:not([controls]) { display: none; }`, ``)
	equal(t, `@media print { a[href]:after { content: " (" attr(href) ")"; } }`, ``)
	equal(t, `@media print { .btn > .caret { background-color: blue; } }`, ``)
	equal(t, `.card-group > .card + .card { background: green; }`, ``)
	equal(t, `@media print { .card-group > .card + .card { background: green; } }`, ``)
	equal(t, `body{ background: url(../hello?iefix=1); }`, ``)
	equal(t, `[href$=".com"]{ background: blue; }`, ``)
	equal(t, `[href^=".com"]{ background: blue; }`, ``)
	equal(t, `[href~=".com"]{ background: blue; }`, ``)
	equal(t, `[href*=".com"]{ background: blue; }`, ``)
	equal(t, `[href|=".com"]{ background: blue; }`, ``)
	equal(t, `a { background: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0)) }`, ``)
}

func TestFile(t *testing.T) {
	// equalFile(t, "01-hello.tsx")
}
