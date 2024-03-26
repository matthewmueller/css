package lexer_test

import (
	"bytes"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/matthewmueller/css/internal/lexer"
	"github.com/matthewmueller/css/internal/token"
	"github.com/matthewmueller/diff"
)

func equal(t *testing.T, input, expected string) {
	t.Helper()
	t.Run(input, func(t *testing.T) {
		t.Helper()
		actual := new(bytes.Buffer)
		tokens := lexer.Lex(input)
		actuals := make([]string, len(tokens))
		for i, tok := range tokens {
			actuals[i] = tok.String()
			actual.WriteString(tok.Text)
		}
		diff.TestString(t, strings.Join(actuals, " "), expected)
		// Verify we can recover the original input if there were no errors
		diff.TestString(t, actual.String(), input)
	})
}

func equalFile(t *testing.T, path string) {
	t.Helper()
	t.Run(path, func(t *testing.T) {
		t.Helper()
		testdataPath := filepath.Join("..", "testdata")
		input, err := os.ReadFile(filepath.Join(testdataPath, path))
		if err != nil {
			t.Fatal(err)
		}
		tokens := lexer.Lex(string(input))
		for _, tok := range tokens {
			if tok.Type == token.Error {
				t.Fatalf("%s (line: %d)", tok.Error, tok.Line)
			}
		}
	})
}

func TestSample(t *testing.T) {
	equal(t, "body { margin: 0 }", `ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " }`)
	equal(t, "body { margin: 10px }", `ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"10" ident:"px" space:" " }`)
	equal(t, "#id { color: green; }", `# ident:"id" space:" " { space:" " ident:"color" : space:" " ident:"green" ; space:" " }`)
	equal(t, "h1 { font-weight: bold; }", `ident:"h1" space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, "h1{}", `ident:"h1" { }`)
	equal(t, ".class { background-color: #f00; }", `. ident:"class" space:" " { space:" " ident:"background-color" : space:" " hex:"#f00" ; space:" " }`)
	equal(t, "a:hover { text-decoration: underline; }", `ident:"a" : ident:"hover" space:" " { space:" " ident:"text-decoration" : space:" " ident:"underline" ; space:" " }`)
	equal(t, "div, span { color: blue; }", `ident:"div" , space:" " ident:"span" space:" " { space:" " ident:"color" : space:" " ident:"blue" ; space:" " }`)
	equal(t, "@media (max-width: 600px) { .responsive { display: none; }}", `@ ident:"media" space:" " ( ident:"max-width" : space:" " number:"600" ident:"px" ) space:" " { space:" " . ident:"responsive" space:" " { space:" " ident:"display" : space:" " ident:"none" ; space:" " } }`)
	equal(t, "@media (max-width: 600px) { .responsive, .cool { display: none; }}", `@ ident:"media" space:" " ( ident:"max-width" : space:" " number:"600" ident:"px" ) space:" " { space:" " . ident:"responsive" , space:" " . ident:"cool" space:" " { space:" " ident:"display" : space:" " ident:"none" ; space:" " } }`)
	equal(t, "* { box-sizing: border-box; }", `* space:" " { space:" " ident:"box-sizing" : space:" " ident:"border-box" ; space:" " }`)
	equal(t, "img[alt='logo'] { width: 100px; }", `ident:"img" [ ident:"alt" = string:"'logo'" ] space:" " { space:" " ident:"width" : space:" " number:"100" ident:"px" ; space:" " }`)
	equal(t, "@font-face { font-family: 'MyFont'; src: url('myfont.woff2'); }", `@ ident:"font-face" space:" " { space:" " ident:"font-family" : space:" " string:"'MyFont'" ; space:" " ident:"src" : space:" " ident:"url" ( raw:"'myfont.woff2'" ) ; space:" " }`)
	equal(t, `@font-face { font-family: 'MyFont'; src: local("some font"), url('myfont.woff2'); }`, `@ ident:"font-face" space:" " { space:" " ident:"font-family" : space:" " string:"'MyFont'" ; space:" " ident:"src" : space:" " ident:"local" ( raw:"\"some" space:" " raw:"font\"" ) , space:" " ident:"url" ( raw:"'myfont.woff2'" ) ; space:" " }`)
	equal(t, "p::after { content: 'read more'; }", `ident:"p" :: ident:"after" space:" " { space:" " ident:"content" : space:" " string:"'read more'" ; space:" " }`)
	equal(t, "ul > li { list-style-type: none; }", `ident:"ul" space:" " > space:" " ident:"li" space:" " { space:" " ident:"list-style-type" : space:" " ident:"none" ; space:" " }`)
	equal(t, ":root { --main-color: #06c; }", `: ident:"root" space:" " { space:" " -- ident:"main-color" : space:" " hex:"#06c" ; space:" " }`)
	equal(t, ".container::before, .container::after { content: ''; display: table; }", `. ident:"container" :: ident:"before" , space:" " . ident:"container" :: ident:"after" space:" " { space:" " ident:"content" : space:" " string:"''" ; space:" " ident:"display" : space:" " ident:"table" ; space:" " }`)
	equal(t, "[data-theme='dark'] { background-color: #333; color: white; }", `[ ident:"data-theme" = string:"'dark'" ] space:" " { space:" " ident:"background-color" : space:" " hex:"#333" ; space:" " ident:"color" : space:" " ident:"white" ; space:" " }`)
	equal(t, "@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }", `@ ident:"keyframes" space:" " ident:"fadeIn" space:" " { space:" " ident:"from" space:" " { space:" " ident:"opacity" : space:" " number:"0" ; space:" " } space:" " ident:"to" space:" " { space:" " ident:"opacity" : space:" " number:"1" ; space:" " } space:" " }`)
	equal(t, "header ~ footer { background-color: #eee; }", `ident:"header" space:" " ~ space:" " ident:"footer" space:" " { space:" " ident:"background-color" : space:" " hex:"#eee" ; space:" " }`)
	equal(t, "header + footer { background-color: #eee; }", `ident:"header" space:" " + space:" " ident:"footer" space:" " { space:" " ident:"background-color" : space:" " hex:"#eee" ; space:" " }`)
	equal(t, `
		.box {
			background: red;
			font-family: 'Lato';
		}

		.box:hover, .circle {
			background: yellow;
		}
	`, `space:"\n\t\t" . ident:"box" space:" " { space:"\n\t\t\t" ident:"background" : space:" " ident:"red" ; space:"\n\t\t\t" ident:"font-family" : space:" " string:"'Lato'" ; space:"\n\t\t" } space:"\n\n\t\t" . ident:"box" : ident:"hover" , space:" " . ident:"circle" space:" " { space:"\n\t\t\t" ident:"background" : space:" " ident:"yellow" ; space:"\n\t\t" } space:"\n\t"`)
}

func TestComplex(t *testing.T) {
	equal(t, "body:not(.no-js) .feature { display: block; }", `ident:"body" : ident:"not" ( . ident:"no-js" ) space:" " . ident:"feature" space:" " { space:" " ident:"display" : space:" " ident:"block" ; space:" " }`)
	equal(t, "li:first-child + li { margin-top: 0; }", `ident:"li" : ident:"first-child" space:" " + space:" " ident:"li" space:" " { space:" " ident:"margin-top" : space:" " number:"0" ; space:" " }`)
	equal(t, "a[href^='https://']:after { content: ' (external)'; }", `ident:"a" [ ident:"href" ^= string:"'https://'" ] : ident:"after" space:" " { space:" " ident:"content" : space:" " string:"' (external)'" ; space:" " }`)
	equal(t, "input[type='text']:focus { border-color: blue; }", `ident:"input" [ ident:"type" = string:"'text'" ] : ident:"focus" space:" " { space:" " ident:"border-color" : space:" " ident:"blue" ; space:" " }`)
	equal(t, "div > p::first-line { text-transform: uppercase; }", `ident:"div" space:" " > space:" " ident:"p" :: ident:"first-line" space:" " { space:" " ident:"text-transform" : space:" " ident:"uppercase" ; space:" " }`)
	equal(t, "table td:nth-of-type(odd) { background-color: #f9f9f9; }", `ident:"table" space:" " ident:"td" : ident:"nth-of-type" ( ident:"odd" ) space:" " { space:" " ident:"background-color" : space:" " hex:"#f9f9f9" ; space:" " }`)
	equal(t, "@media screen and (min-width: 768px) { .container { width: 750px; }}", `@ ident:"media" space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"min-width" : space:" " number:"768" ident:"px" ) space:" " { space:" " . ident:"container" space:" " { space:" " ident:"width" : space:" " number:"750" ident:"px" ; space:" " } }`)
	equal(t, ".tooltip:hover::after { content: attr(data-tooltip-text); color: #fff; }", `. ident:"tooltip" : ident:"hover" :: ident:"after" space:" " { space:" " ident:"content" : space:" " ident:"attr" ( raw:"data-tooltip-text" ) ; space:" " ident:"color" : space:" " hex:"#fff" ; space:" " }`)
	equal(t, "h1 + *[rel='up'] { margin-bottom: 0; }", `ident:"h1" space:" " + space:" " * [ ident:"rel" = string:"'up'" ] space:" " { space:" " ident:"margin-bottom" : space:" " number:"0" ; space:" " }`)
	equal(t, "ul li:nth-last-child(-n+2) { font-weight: bold; }", `ident:"ul" space:" " ident:"li" : ident:"nth-last-child" ( - ident:"n" + number:"2" ) space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, ":is(.header, .footer) a:not(:hover) { text-decoration: none; }", `: ident:"is" ( . ident:"header" , space:" " . ident:"footer" ) space:" " ident:"a" : ident:"not" ( : ident:"hover" ) space:" " { space:" " ident:"text-decoration" : space:" " ident:"none" ; space:" " }`)
	equal(t, ".box::before { content: '★'; position: absolute; }", `. ident:"box" :: ident:"before" space:" " { space:" " ident:"content" : space:" " string:"'★'" ; space:" " ident:"position" : space:" " ident:"absolute" ; space:" " }`)
	equal(t, "a:visited, a:link { color: #4a4a4a; }", `ident:"a" : ident:"visited" , space:" " ident:"a" : ident:"link" space:" " { space:" " ident:"color" : space:" " hex:"#4a4a4a" ; space:" " }`)
	equal(t, "html[data-theme='dark'] .card { background-color: #333; color: white; }", `ident:"html" [ ident:"data-theme" = string:"'dark'" ] space:" " . ident:"card" space:" " { space:" " ident:"background-color" : space:" " hex:"#333" ; space:" " ident:"color" : space:" " ident:"white" ; space:" " }`)
	equal(t, "@supports (display: grid) { .grid { display: grid; }}", `@ ident:"supports" space:" " ( ident:"display" : space:" " ident:"grid" ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } }`)
	equal(t, ":root { --main-bg-color: #0063e5; }", `: ident:"root" space:" " { space:" " -- ident:"main-bg-color" : space:" " hex:"#0063e5" ; space:" " }`)
	equal(t, "body { background-color: var(--main-bg-color, #000); }", `ident:"body" space:" " { space:" " ident:"background-color" : space:" " ident:"var" ( raw:"--main-bg-color" , space:" " raw:"#000" ) ; space:" " }`)
	equal(t, ".scroll-snap-container { scroll-snap-type: y mandatory; }", `. ident:"scroll-snap-container" space:" " { space:" " ident:"scroll-snap-type" : space:" " ident:"y" space:" " ident:"mandatory" ; space:" " }`)
	equal(t, "@keyframes slidein { from { transform: translateX(0%); } to { transform: translateX(100%); }}", `@ ident:"keyframes" space:" " ident:"slidein" space:" " { space:" " ident:"from" space:" " { space:" " ident:"transform" : space:" " ident:"translateX" ( raw:"0%" ) ; space:" " } space:" " ident:"to" space:" " { space:" " ident:"transform" : space:" " ident:"translateX" ( raw:"100%" ) ; space:" " } }`)
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
	`, `space:"\n\t\t" . ident:"container" space:" " { space:"\n\t\t\t" ident:"display" : space:" " ident:"grid" ; space:"\n\t\t\t" ident:"grid-template-areas" : space:"\n\t\t\t\t" string:"\"header\"" space:"\n\t\t\t\t" string:"\"main\"" space:"\n\t\t\t\t" string:"\"sidebar\"" space:"\n\t\t\t\t" string:"\"footer\"" ; space:"\n\t\t\t" ident:"grid-template-columns" : space:" " number:"1" ident:"fr" ; space:"\n\t\t\t" ident:"grid-template-rows" : space:" " ident:"auto" space:" " number:"1" ident:"fr" space:" " ident:"auto" space:" " ident:"auto" ; space:"\n\t\t\t" ident:"gap" : space:" " number:"10" ident:"px" ; space:"\n\t\t" } space:"\n\t"`)
	equal(t, `@media (min-width: 768px) {
		.container {
			grid-template-areas:
				"header header header"
				"main main sidebar"
				"footer footer footer";
			grid-template-columns: 2fr 1fr 1fr;
			grid-template-rows: auto 1fr auto;
		}
	}`, `@ ident:"media" space:" " ( ident:"min-width" : space:" " number:"768" ident:"px" ) space:" " { space:"\n\t\t" . ident:"container" space:" " { space:"\n\t\t\t" ident:"grid-template-areas" : space:"\n\t\t\t\t" string:"\"header header header\"" space:"\n\t\t\t\t" string:"\"main main sidebar\"" space:"\n\t\t\t\t" string:"\"footer footer footer\"" ; space:"\n\t\t\t" ident:"grid-template-columns" : space:" " number:"2" ident:"fr" space:" " number:"1" ident:"fr" space:" " number:"1" ident:"fr" ; space:"\n\t\t\t" ident:"grid-template-rows" : space:" " ident:"auto" space:" " number:"1" ident:"fr" space:" " ident:"auto" ; space:"\n\t\t" } space:"\n\t" }`)
	equal(t, `audio:not([controls]) { display: none; }`, `ident:"audio" : ident:"not" ( [ ident:"controls" ] ) space:" " { space:" " ident:"display" : space:" " ident:"none" ; space:" " }`)
	equal(t, `@media print { a[href]:after { content: " (" attr(href) ")"; } }`, `@ ident:"media" space:" " ident:"print" space:" " { space:" " ident:"a" [ ident:"href" ] : ident:"after" space:" " { space:" " ident:"content" : space:" " string:"\" (\"" space:" " ident:"attr" ( raw:"href" ) space:" " string:"\")\"" ; space:" " } space:" " }`)
	equal(t, `@media print { .btn > .caret { background-color: blue; } }`, `@ ident:"media" space:" " ident:"print" space:" " { space:" " . ident:"btn" space:" " > space:" " . ident:"caret" space:" " { space:" " ident:"background-color" : space:" " ident:"blue" ; space:" " } space:" " }`)
	equal(t, `.card-group > .card + .card { background: green; }`, `. ident:"card-group" space:" " > space:" " . ident:"card" space:" " + space:" " . ident:"card" space:" " { space:" " ident:"background" : space:" " ident:"green" ; space:" " }`)
	equal(t, `@media print { .card-group > .card + .card { background: green; } }`, `@ ident:"media" space:" " ident:"print" space:" " { space:" " . ident:"card-group" space:" " > space:" " . ident:"card" space:" " + space:" " . ident:"card" space:" " { space:" " ident:"background" : space:" " ident:"green" ; space:" " } space:" " }`)
	equal(t, `body{ background: url(../hello?iefix=1); }`, `ident:"body" { space:" " ident:"background" : space:" " ident:"url" ( raw:"../hello?iefix=1" ) ; space:" " }`)
	equal(t, `[href$=".com"]{ background: blue; }`, `[ ident:"href" $= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href^=".com"]{ background: blue; }`, `[ ident:"href" ^= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href~=".com"]{ background: blue; }`, `[ ident:"href" ~= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href*=".com"]{ background: blue; }`, `[ ident:"href" *= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href|=".com"]{ background: blue; }`, `[ ident:"href" |= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `a { background: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0)) }`, `ident:"a" space:" " { space:" " ident:"background" : space:" " ident:"linear-gradient" ( raw:"180deg" , space:" " raw:"rgba" ( raw:"255" , space:" " raw:"255" , space:" " raw:"255" , space:" " raw:"0.15" ) , space:" " raw:"rgba" ( raw:"255" , space:" " raw:"255" , space:" " raw:"255" , space:" " raw:"0" ) ) space:" " }`)
}

func TestComment(t *testing.T) {
	equal(t, "/* This is a single-line comment */\nbody { margin: 0; }", `comment:"/* This is a single-line comment */" space:"\n" ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " }`)
	equal(t, "/* This is a\n   multiline comment */\nbody { margin: 0; }", `comment:"/* This is a\n   multiline comment */" space:"\n" ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " }`)
	equal(t, "body { margin: 0; } /* Comment at the end */", `ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " } space:" " comment:"/* Comment at the end */"`)
	equal(t, "body { /* This is a comment inside a rule */ margin: 0; }", `ident:"body" space:" " { space:" " comment:"/* This is a comment inside a rule */" space:" " ident:"margin" : space:" " number:"0" ; space:" " }`)
	equal(t, "body { margin: 0; }\n/* Comment between rules */\np { padding: 0; }", `ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " } space:"\n" comment:"/* Comment between rules */" space:"\n" ident:"p" space:" " { space:" " ident:"padding" : space:" " number:"0" ; space:" " }`)
	equal(t, "/* Comment before a rule */\nbody { margin: 0; }", `comment:"/* Comment before a rule */" space:"\n" ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " }`)
	equal(t, "/* First comment */\n/* Second comment */\nbody { margin: 0; }", `comment:"/* First comment */" space:"\n" comment:"/* Second comment */" space:"\n" ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " }`)
	equal(t, "body { margin: /* inline comment */ 0; }", `ident:"body" space:" " { space:" " ident:"margin" : space:" " comment:"/* inline comment */" space:" " number:"0" ; space:" " }`)
	equal(t, "/* Comment before selector */ body /* comment inside selector */, p /* another comment */ { margin: 0; }", `comment:"/* Comment before selector */" space:" " ident:"body" space:" " comment:"/* comment inside selector */" , space:" " ident:"p" space:" " comment:"/* another comment */" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " }`)
	equal(t, "@media screen and (min-width: 600px) { /* comment inside media query */ body { margin: 0; } }", `@ ident:"media" space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"min-width" : space:" " number:"600" ident:"px" ) space:" " { space:" " comment:"/* comment inside media query */" space:" " ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" ; space:" " } space:" " }`)
	equal(t, "@keyframes slide { /* comment inside keyframes */ from { margin-left: 100%; } to { margin-left: 0%; } }", `@ ident:"keyframes" space:" " ident:"slide" space:" " { space:" " comment:"/* comment inside keyframes */" space:" " ident:"from" space:" " { space:" " ident:"margin-left" : space:" " number:"100" percent:"%" ; space:" " } space:" " ident:"to" space:" " { space:" " ident:"margin-left" : space:" " number:"0" percent:"%" ; space:" " } space:" " }`)
}

func TestFile(t *testing.T) {
	equalFile(t, "normalize.css")
	equalFile(t, "preflight.css")
	equalFile(t, "tachyons.css")
	equalFile(t, "bootstrap.css")
	equalFile(t, "basscss.min.css.txt")
	equalFile(t, "bootstrap.min.css.txt")
}
