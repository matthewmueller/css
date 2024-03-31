package parser_test

import (
	"flag"
	"os"
	"path/filepath"
	"testing"

	"github.com/matthewmueller/css/internal/parser"
	"github.com/matthewmueller/diff"
)

var update = flag.Bool("update", false, "update golden files")

func equal(t *testing.T, input, expected string) {
	t.Helper()
	t.Run(input, func(t *testing.T) {
		t.Helper()
		doc, err := parser.Parse(input, input)
		if err != nil {
			diff.TestString(t, err.Error(), expected)
			return
		}
		actual := doc.String()
		diff.TestString(t, actual, expected)
	})
}

func equalFile(t *testing.T, path string) {
	t.Helper()
	t.Run(path, func(t *testing.T) {
		t.Helper()
		testdata := filepath.Join("..", "testdata")
		input, err := os.ReadFile(filepath.Join(testdata, path))
		if err != nil {
			t.Fatal(err)
		}
		actual, err := parser.Parse(path, string(input))
		if err != nil {
			t.Fatal(err)
		}
		expected, err := os.ReadFile(filepath.Join(testdata, path+".parse"))
		if err != nil {
			if !os.IsNotExist(err) {
				t.Fatal(err)
			}
			expected = []byte{}
		}
		if *update {
			expected = []byte(actual.String())
			err := os.WriteFile(filepath.Join(testdata, path+".parse"), []byte(actual.String()), 0644)
			if err != nil {
				t.Fatal(err)
			}
		}
		diff.TestString(t, actual.String(), string(expected))
	})
}

func TestSample(t *testing.T) {
	equal(t, `body { margin: 0 }`, `body { margin: 0 }`)
	equal(t, "body { margin: 10px }", `body { margin: 10px }`)
	equal(t, "body { margin: -10px }", `body { margin: -10px }`)
	equal(t, "body { margin: -10px 20px }", `body { margin: -10px 20px }`)
	equal(t, "body { margin: 10px 20px }", `body { margin: 10px 20px }`)
	equal(t, "body { margin: -10px 20px 0 10px }", `body { margin: -10px 20px 0 10px }`)
	equal(t, "#id { color: green; }", `#id { color: green }`)
	equal(t, "h1 { font-weight: bold; }", `h1 { font-weight: bold }`)
	equal(t, "h1{}", `h1 {  }`)
	equal(t, ".class { background-color: #f00; }", `.class { background-color: #f00 }`)
	equal(t, "a:hover { text-decoration: underline; }", `a:hover { text-decoration: underline }`)
	equal(t, "div, span { color: blue; }", `div, span { color: blue }`)
	equal(t, "@media (max-width: 600px) { .responsive { display: none; }}", "@media (max-width: 600px) {\n  .responsive { display: none }\n}")
	equal(t, "@media (max-width: 600px) { .responsive, .cool { display: none; }}", "@media (max-width: 600px) {\n  .responsive, .cool { display: none }\n}")
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
	equal(t, "li:first-child + li { margin-top: 0; }", `li:first-child + li { margin-top: 0 }`)
	equal(t, "a[href^='https://']:after { content: ' (external)'; }", `a[href^='https://']:after { content: ' (external)' }`)
	equal(t, "input[type='text']:focus { border-color: blue; }", `input[type='text']:focus { border-color: blue }`)
	equal(t, "div > p::first-line { text-transform: uppercase; }", `div > p::first-line { text-transform: uppercase }`)
	equal(t, "table td:nth-of-type(odd) { background-color: #f9f9f9; }", `table td:nth-of-type(odd) { background-color: #f9f9f9 }`)
	equal(t, "@media screen and (min-width: 768px) { .container { width: 750px; }}", "@media screen and (min-width: 768px) {\n  .container { width: 750px }\n}")
	equal(t, ".tooltip:hover::after { content: attr(data-tooltip-text); color: #fff; }", `.tooltip:hover::after { content: attr(data-tooltip-text); color: #fff }`)
	equal(t, "h1 + *[rel='up'] { margin-bottom: 0; }", `h1 + *[rel='up'] { margin-bottom: 0 }`)
	equal(t, "ul li:nth-last-child(-n+2) { font-weight: bold; }", `ul li:nth-last-child(-n + 2) { font-weight: bold }`)
	equal(t, "ul li:nth-last-child(-n) {}", `ul li:nth-last-child(-n) {  }`)
	equal(t, "ul li:nth-last-child(-30n+20) {}", `ul li:nth-last-child(-30n + 20) {  }`)
	equal(t, "ul li:nth-last-child(30n+20) {}", `ul li:nth-last-child(30n + 20) {  }`)
	equal(t, "ul li:nth-last-child(30n) {}", `ul li:nth-last-child(30n) {  }`)
	equal(t, "ul li:nth-last-child(30) {}", `ul li:nth-last-child(30) {  }`)
	equal(t, ".box::before { content: '★'; position: absolute; }", `.box::before { content: '★'; position: absolute }`)
	equal(t, "a:visited, a:link { color: #4a4a4a; }", `a:visited, a:link { color: #4a4a4a }`)
	equal(t, "html[data-theme='dark'] .card { background-color: #333; color: white; }", `html[data-theme='dark'] .card { background-color: #333; color: white }`)
	equal(t, ":root { --main-bg-color: #0063e5; }", `:root { --main-bg-color: #0063e5 }`)
	equal(t, "body { background-color: var(--main-bg-color, #000); }", `body { background-color: var(--main-bg-color, #000) }`)
	equal(t, ".scroll-snap-container { scroll-snap-type: y mandatory; }", `.scroll-snap-container { scroll-snap-type: y mandatory }`)
	equal(t, "@keyframes slidein { from { transform: translateX(0%); } to { transform: translateX(100%); }}", `@keyframes slidein { from { transform: translateX(0%) } to { transform: translateX(100%) } }`)
	equal(t, "body:not(.no-js) .feature { display: block; }", `body:not(.no-js) .feature { display: block }`)
	equal(t, "body:not(td) .feature { display: block; }", `body:not(td) .feature { display: block }`)
	equal(t, ":is(.header, .footer) a:not(:hover) { text-decoration: none; }", `:is(.header, .footer) a:not(:hover) { text-decoration: none }`)
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
	`, `.container { display: grid; grid-template-areas: "header" "main" "sidebar" "footer"; grid-template-columns: 1fr; grid-template-rows: auto 1fr auto auto; gap: 10px }`)
	equal(t, `@media (min-width: 768px) {
		.container {
			grid-template-areas:
				"header header header"
				"main main sidebar"
				"footer footer footer";
			grid-template-columns: 2fr 1fr 1fr;
			grid-template-rows: auto 1fr auto;
		}
	}`, "@media (min-width: 768px) {\n  .container { grid-template-areas: \"header header header\" \"main main sidebar\" \"footer footer footer\"; grid-template-columns: 2fr 1fr 1fr; grid-template-rows: auto 1fr auto }\n}")
	equal(t, `audio:not([controls]) { display: none; }`, `audio:not([controls]) { display: none }`)
	equal(t, `::selection { background-color: aqua; }`, `::selection { background-color: aqua }`)
	equal(t, `::slotted(.content) { background-color: aqua; }`, `::slotted(.content) { background-color: aqua }`)
	equal(t, `h2::slotted(span) { background-color: aqua; }`, `h2::slotted(span) { background-color: aqua }`)
	equal(t, `@media print { a[href]:after { content: " (" attr(href) ")"; } }`, "@media print {\n  a[href]:after { content: \" (\" attr(href) \")\" }\n}")
	equal(t, `@media print { .btn > .caret { background-color: blue; } }`, "@media print {\n  .btn > .caret { background-color: blue }\n}")
	equal(t, `.card-group > .card + .card { background: green; }`, `.card-group > .card + .card { background: green }`)
	equal(t, `@media print { .card-group > .card + .card { background: green; } }`, "@media print {\n  .card-group > .card + .card { background: green }\n}")
	equal(t, `body{ background: url(../hello?iefix=1); }`, `body { background: url(../hello?iefix=1) }`)
	equal(t, `[href$=".com"]{ background: blue; }`, `[href$=".com"] { background: blue }`)
	equal(t, `[href^=".com"]{ background: blue; }`, `[href^=".com"] { background: blue }`)
	equal(t, `[href~=".com"]{ background: blue; }`, `[href~=".com"] { background: blue }`)
	equal(t, `[href*=".com"]{ background: blue; }`, `[href*=".com"] { background: blue }`)
	equal(t, `[href|=".com"]{ background: blue; }`, `[href|=".com"] { background: blue }`)
	equal(t, `a { background: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0)) }`, `a { background: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0)) }`)
	equal(t, `@media screen and (min-width: 30em) and (max-width: 60em) {}`, `@media screen and (min-width: 30em) and (max-width: 60em) {}`)
	equal(t, `@charset "UTF-8";`, `@charset "UTF-8";`)
	equal(t, `.form-control:hover:not(:disabled):not([readonly])::file-selector-button { background-color: var(--bs-secondary-bg); }`, `.form-control:hover:not(:disabled):not([readonly])::file-selector-button { background-color: var(--bs-secondary-bg) }`)
	equal(t, `@media screen { .form-control::-webkit-file-upload-button {} }`, "@media screen {\n  .form-control::-webkit-file-upload-button {  }\n}")
	equal(t, `.form-control:not(:-moz-placeholder-shown) {}`, ".form-control:not(:-moz-placeholder-shown) {  }")
	equal(t, `.dropdown-toggle:nth-last-child(n+3) {}`, ".dropdown-toggle:nth-last-child(n + 3) {  }")
	equal(t, `.card-group > .card:not(:last-child) {}`, `.card-group > .card:not(:last-child) {  }`)
	equal(t, `@media screen { .card-group > .card:not(:last-child) {} }`, "@media screen {\n  .card-group > .card:not(:last-child) {  }\n}")
	equal(t, `.clip { clip: rect( 1px 1px 1px 1px ); /* IE6, IE7 */ clip: rect( 1px, 1px, 1px, 1px ); }`, `.clip { clip: rect(1px 1px 1px 1px); clip: rect(1px, 1px, 1px, 1px) }`)
	equal(t, `:root { --color: ; /* The variable is declared but has no value */ } body { color: var(--color, black); }`, ":root { --color: }\nbody { color: var(--color, black) }")
	equal(t, `.display-none{display:none!important}`, `.display-none { display: none !important }`)
	equal(t, `.clip { position: fixed !important; }`, `.clip { position: fixed !important }`)
	equal(t, `@media only screen and (-webkit-min-device-pixel-ratio: 2/1) {}`, `@media only screen and (-webkit-min-device-pixel-ratio: 2/1) {}`)
}

func TestMediaQuery(t *testing.T) {
	equal(t, `@media print { body { font-size: 10pt; } }`, "@media print {\n  body { font-size: 10pt }\n}")
	equal(t, `@media print, screen { body { font-size: 10pt; } }`, "@media print, screen {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (hover: hover) { body { font-size: 10pt; } }`, "@media (hover: hover) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media print and (orientation: portrait) { body { font-size: 10pt; } }`, "@media print and (orientation: portrait) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (max-width: 1250px) { body { font-size: 10pt; } }`, "@media (max-width: 1250px) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (width <= 1250px) { body { font-size: 10pt; } }`, "@media (width <= 1250px) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (min-width: 30em) and (max-width: 50em) { body { font-size: 10pt; } }`, "@media (min-width: 30em) and (max-width: 50em) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media screen and (min-width: 30em) and (orientation: landscape) { body { font-size: 10pt; } }`, "@media screen and (min-width: 30em) and (orientation: landscape) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (30em <= width <= 50em) { body { font-size: 10pt; } }`, "@media (30em <= width <= 50em) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (30em < width < 50em) { body { font-size: 10pt; } }`, "@media (30em < width < 50em) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (color) { body { font-size: 10pt; } }`, "@media (color) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (min-width: 30em) and (orientation: landscape) { body { font-size: 10pt; } }`, "@media (min-width: 30em) and (orientation: landscape) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media (min-height: 680px), screen and (orientation: portrait) { body { font-size: 10pt; } }`, "@media (min-height: 680px), screen and (orientation: portrait) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media not print { body { font-size: 10pt; } }`, "@media not print {\n  body { font-size: 10pt }\n}")
	equal(t, `@media not screen and (color), print and (color) { body { font-size: 10pt; } }`, "@media not screen and (color), print and (color) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media not all and (monochrome) { body { font-size: 10pt; } }`, "@media not all and (monochrome) {\n  body { font-size: 10pt }\n}")
	equal(t, `@media only screen and (color) { body { font-size: 10pt; } }`, "@media only screen and (color) {\n  body { font-size: 10pt }\n}")
}

func TestSupports(t *testing.T) {
	equal(t, `@supports (display: grid) { .grid { display: grid; }}`, "@supports (display: grid) {\n  .grid { display: grid }\n}")
	equal(t, `@supports (display: grid) and (transform-origin: 5% 5%) { .grid { display: grid; }}`, "@supports (display: grid) and (transform-origin: 5% 5%) {\n  .grid { display: grid }\n}")
	equal(t, `@supports selector(h2 > p) { .grid { display: grid; } }`, "@supports selector(h2 > p) {\n  .grid { display: grid }\n}")
	equal(t, `@supports selector(h2 ~ p) { .grid { display: grid; } }`, "@supports selector(h2 ~ p) {\n  .grid { display: grid }\n}")
	equal(t, `@supports selector(h2 + p) { .grid { display: grid; } }`, "@supports selector(h2 + p) {\n  .grid { display: grid }\n}")
	equal(t, `@supports selector(:not(.h2)) { .grid { display: grid; } }`, "@supports selector(:not(.h2)) {\n  .grid { display: grid }\n}")
	equal(t, `@supports font-tech(color-COLRv1) { .grid { display: grid; } }`, "@supports font-tech(color-COLRv1) {\n  .grid { display: grid }\n}")
	equal(t, `@import url("gridy.css") supports(display: grid);`, `@import url("gridy.css") supports((display: grid));`)
	equal(t, `@import url("gridy.css") supports(display: grid) screen and (max-width: 400px);`, `@import url("gridy.css") supports((display: grid)) screen and (max-width: 400px);`)
	equal(t, `@import url("flexy.css") supports(not (display: grid) and (display: flex)) screen and (max-width: 400px);`, `@import url("flexy.css") supports(not (display: grid) and (display: flex)) screen and (max-width: 400px);`)
	// equal(t, `@import url("whatever.css") supports((selector(h2 > p)) and (font-tech(color-COLRv1)));`, `@`)
}

func TestImports(t *testing.T) {
	equal(t, `@import "custom.css";`, `@import url("custom.css");`)
	equal(t, `@import url("custom.css");`, `@import url("custom.css");`)
	equal(t, `@import url('custom.css');`, `@import url("custom.css");`)
	equal(t, `@import url(custom.css);`, `@import url("custom.css");`)
	equal(t, `@import url(custom.css)`, `@import url("custom.css");`)
	equal(t, `@import url(custom.css);`, `@import url("custom.css");`)
	equal(t, `@import url("chrome://communicator/skin/");`, `@import url("chrome://communicator/skin/");`)
	equal(t, `@import url("fineprint.css") print;`, `@import url("fineprint.css") print;`)
	equal(t, `@import url("bluish.css") print, screen;`, `@import url("bluish.css") print, screen;`)
	equal(t, `@import "common.css" screen;`, `@import url("common.css") screen;`)
	equal(t, `@import url("landscape.css") screen and (orientation: landscape);`, `@import url("landscape.css") screen and (orientation: landscape);`)
	equal(t, `@import "theme.css" layer(utilities);`, `@import url("theme.css") layer(utilities);`)
	equal(t, `@import url(headings.css) layer(default);`, `@import url("headings.css") layer(default);`)
	equal(t, `@import url(links.css) layer(default);`, `@import url("links.css") layer(default);`)
	equal(t, `@import "theme.css" layer();`, `@import url("theme.css") layer();`)
	equal(t, `@import "style.css" layer;`, `@import url("style.css") layer();`)
}

func TestNested(t *testing.T) {
	t.Skip("nested rules are not supported")
	equal(t, `label { input { margin: 0 } }`, ``)
	equal(t, `label { & input { margin: 0 } }`, ``)
	equal(t, `label { input & { margin: 0 } }`, ``)
	equal(t, `label { input>& { margin: 0 } }`, ``)
	equal(t, `label { input~& { margin: 0 } }`, ``)
	equal(t, `label { input+& { margin: 0 } }`, ``)
	equal(t, `label { input & & & { margin: 0 } }`, ``)
	equal(t, `label { &>input { margin: 0 } }`, ``)
	equal(t, `label { &+input { margin: 0 } }`, ``)
	equal(t, `label { &~input { margin: 0 } }`, ``)
	equal(t, `label { &:hover { margin: 0 } }`, ``)
	equal(t, `label { &:hover, &:focus { margin: 0 } }`, ``)
	equal(t, `& { color: blue }`, ``)
	equal(t, `&:hover { color: blue }`, ``)
}

func TestFile(t *testing.T) {
	equalFile(t, "normalize.css")
	equalFile(t, "preflight.css")
	equalFile(t, "tachyons.css")
	equalFile(t, "bootstrap4.css")
	equalFile(t, "bootstrap.css")
	equalFile(t, "basscss.min.css.txt")
	equalFile(t, "bootstrap.min.css.txt")
	equalFile(t, "github.com.css")
	equalFile(t, "atom.io.css")
	// equalFile(t, "tailwind.css")
}

func BenchmarkParseBootstrap4(b *testing.B) {
	css, err := os.ReadFile("../testdata/bootstrap4.css")
	if err != nil {
		b.Fatal(err)
	}
	// run the Fib function b.N times
	for n := 0; n < b.N; n++ {
		_, err := parser.Parse("bootstrap4.css", string(css))
		if err != nil {
			b.Fatal(err)
		}
	}
}
