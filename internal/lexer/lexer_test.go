package lexer_test

import (
	"bytes"
	"flag"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"testing"

	"github.com/matthewmueller/css/internal/lexer"
	"github.com/matthewmueller/css/internal/token"
	"github.com/matthewmueller/diff"
)

var update = flag.Bool("update", false, "update golden files")

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
		testdata := filepath.Join("..", "testdata")
		input, err := os.ReadFile(filepath.Join(testdata, path))
		if err != nil {
			t.Fatal(err)
		}
		tokens := lexer.Lex(string(input))
		for _, tok := range tokens {
			if tok.Type == token.Error {
				t.Fatalf("%s (line: %d)", tok.Error, tok.Line)
			}
		}
		expect, err := os.ReadFile(filepath.Join(testdata, path+".lex"))
		if err != nil {
			if !os.IsNotExist(err) {
				t.Fatal(err)
			}
		}
		actual := new(bytes.Buffer)
		for i, tok := range tokens {
			if i > 0 {
				actual.WriteString("\n")
			}
			actual.WriteString(tok.String())
		}
		if *update {
			expect = actual.Bytes()
			err := os.WriteFile(filepath.Join(testdata, path+".lex"), expect, 0644)
			if err != nil {
				t.Fatal(err)
			}
		}
		diff.TestString(t, actual.String(), string(expect))
	})
}

func equalLines(t *testing.T, input, expected string) {
	t.Helper()
	t.Run(input, func(t *testing.T) {
		t.Helper()
		tokens := lexer.Lex(input)
		var actuals []string
		for _, tok := range tokens {
			actual := new(bytes.Buffer)
			actual.WriteString(tok.String())
			actual.WriteString(" ")
			actual.WriteString(strconv.Itoa(tok.Line))
			actuals = append(actuals, actual.String())
		}
		diff.TestContent(t, strings.Join(actuals, "\n"), expected)
	})
}

func TestSample(t *testing.T) {
	equal(t, "body { margin: 0 }", `ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " }`)
	equal(t, "body { margin: 10px }", `ident:"body" space:" " { space:" " ident:"margin" : space:" " number:"10" ident:"px" space:" " }`)
	equal(t, "#id { color: green; }", `# ident:"id" space:" " { space:" " ident:"color" : space:" " ident:"green" ; space:" " }`)
	equal(t, "h1 { font-weight: bold; }", `ident:"h1" space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, "h1{}", `ident:"h1" { }`)
	equal(t, ".class { background-color: #f00; }", `. ident:"class" space:" " { space:" " ident:"background-color" : space:" " # ident:"f00" ; space:" " }`)
	equal(t, ".class { background-color: #f00000; }", `. ident:"class" space:" " { space:" " ident:"background-color" : space:" " # ident:"f00000" ; space:" " }`)
	equal(t, ".class { background-color: #f0000000; }", `. ident:"class" space:" " { space:" " ident:"background-color" : space:" " # ident:"f0000000" ; space:" " }`)
	equal(t, "a:hover { text-decoration: underline; }", `ident:"a" : ident:"hover" space:" " { space:" " ident:"text-decoration" : space:" " ident:"underline" ; space:" " }`)
	equal(t, "div, span { color: blue; }", `ident:"div" , space:" " ident:"span" space:" " { space:" " ident:"color" : space:" " ident:"blue" ; space:" " }`)
	equal(t, "@media (max-width: 600px) { .responsive { display: none; }}", `@ ident:"media" space:" " ( ident:"max-width" : space:" " number:"600" ident:"px" ) space:" " { space:" " . ident:"responsive" space:" " { space:" " ident:"display" : space:" " ident:"none" ; space:" " } }`)
	equal(t, "@media (max-width: 600px) { .responsive, .cool { display: none; }}", `@ ident:"media" space:" " ( ident:"max-width" : space:" " number:"600" ident:"px" ) space:" " { space:" " . ident:"responsive" , space:" " . ident:"cool" space:" " { space:" " ident:"display" : space:" " ident:"none" ; space:" " } }`)
	equal(t, "@media screen and (min-width: 30em) and (max-width: 60em) {}", `@ ident:"media" space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"min-width" : space:" " number:"30" ident:"em" ) space:" " ident:"and" space:" " ( ident:"max-width" : space:" " number:"60" ident:"em" ) space:" " { }`)
	equal(t, "* { box-sizing: border-box; }", `* space:" " { space:" " ident:"box-sizing" : space:" " ident:"border-box" ; space:" " }`)
	equal(t, "img[alt='logo'] { width: 100px; }", `ident:"img" [ ident:"alt" = string:"'logo'" ] space:" " { space:" " ident:"width" : space:" " number:"100" ident:"px" ; space:" " }`)
	equal(t, "@font-face { font-family: 'MyFont'; src: url('myfont.woff2'); }", `@ ident:"font-face" space:" " { space:" " ident:"font-family" : space:" " string:"'MyFont'" ; space:" " ident:"src" : space:" " ident:"url" ( string:"'myfont.woff2'" ) ; space:" " }`)
	equal(t, `@font-face { font-family: 'MyFont'; src: local("some font"), url('myfont.woff2'); }`, `@ ident:"font-face" space:" " { space:" " ident:"font-family" : space:" " string:"'MyFont'" ; space:" " ident:"src" : space:" " ident:"local" ( string:"\"some font\"" ) , space:" " ident:"url" ( string:"'myfont.woff2'" ) ; space:" " }`)
	equal(t, "p::after { content: 'read more'; }", `ident:"p" :: ident:"after" space:" " { space:" " ident:"content" : space:" " string:"'read more'" ; space:" " }`)
	equal(t, "ul > li { list-style-type: none; }", `ident:"ul" space:" " > space:" " ident:"li" space:" " { space:" " ident:"list-style-type" : space:" " ident:"none" ; space:" " }`)
	equal(t, ":root { --main-color: #06c; }", `: ident:"root" space:" " { space:" " -- ident:"main-color" : space:" " # ident:"06c" ; space:" " }`)
	equal(t, ".container::before, .container::after { content: ''; display: table; }", `. ident:"container" :: ident:"before" , space:" " . ident:"container" :: ident:"after" space:" " { space:" " ident:"content" : space:" " string:"''" ; space:" " ident:"display" : space:" " ident:"table" ; space:" " }`)
	equal(t, "[data-theme='dark'] { background-color: #333; color: white; }", `[ ident:"data-theme" = string:"'dark'" ] space:" " { space:" " ident:"background-color" : space:" " # ident:"333" ; space:" " ident:"color" : space:" " ident:"white" ; space:" " }`)
	equal(t, "@keyframes fadeIn { from { opacity: 0; } to { opacity: 1; } }", `@ ident:"keyframes" space:" " ident:"fadeIn" space:" " { space:" " ident:"from" space:" " { space:" " ident:"opacity" : space:" " number:"0" ; space:" " } space:" " ident:"to" space:" " { space:" " ident:"opacity" : space:" " number:"1" ; space:" " } space:" " }`)
	equal(t, "header ~ footer { background-color: #eee; }", `ident:"header" space:" " ~ space:" " ident:"footer" space:" " { space:" " ident:"background-color" : space:" " # ident:"eee" ; space:" " }`)
	equal(t, "header + footer { background-color: #eee; }", `ident:"header" space:" " + space:" " ident:"footer" space:" " { space:" " ident:"background-color" : space:" " # ident:"eee" ; space:" " }`)
	equal(t, `
		.box {
			background: red;
			font-family: 'Lato';
		}

		.box:hover, .circle {
			background: yellow;
		}
	`, `space:"\n" space:"\t\t" . ident:"box" space:" " { space:"\n" space:"\t\t\t" ident:"background" : space:" " ident:"red" ; space:"\n" space:"\t\t\t" ident:"font-family" : space:" " string:"'Lato'" ; space:"\n" space:"\t\t" } space:"\n" space:"\n" space:"\t\t" . ident:"box" : ident:"hover" , space:" " . ident:"circle" space:" " { space:"\n" space:"\t\t\t" ident:"background" : space:" " ident:"yellow" ; space:"\n" space:"\t\t" } space:"\n" space:"\t"`)
}

func TestComplex(t *testing.T) {
	equal(t, "body:not(.no-js) .feature { display: block; }", `ident:"body" : ident:"not" ( . ident:"no-js" ) space:" " . ident:"feature" space:" " { space:" " ident:"display" : space:" " ident:"block" ; space:" " }`)
	equal(t, "li:first-child + li { margin-top: 0; }", `ident:"li" : ident:"first-child" space:" " + space:" " ident:"li" space:" " { space:" " ident:"margin-top" : space:" " number:"0" ; space:" " }`)
	equal(t, "a[href^='https://']:after { content: ' (external)'; }", `ident:"a" [ ident:"href" ^= string:"'https://'" ] : ident:"after" space:" " { space:" " ident:"content" : space:" " string:"' (external)'" ; space:" " }`)
	equal(t, "input[type='text']:focus { border-color: blue; }", `ident:"input" [ ident:"type" = string:"'text'" ] : ident:"focus" space:" " { space:" " ident:"border-color" : space:" " ident:"blue" ; space:" " }`)
	equal(t, "div > p::first-line { text-transform: uppercase; }", `ident:"div" space:" " > space:" " ident:"p" :: ident:"first-line" space:" " { space:" " ident:"text-transform" : space:" " ident:"uppercase" ; space:" " }`)
	equal(t, "table td:nth-of-type(odd) { background-color: #f9f9f9; }", `ident:"table" space:" " ident:"td" : ident:"nth-of-type" ( ident:"odd" ) space:" " { space:" " ident:"background-color" : space:" " # ident:"f9f9f9" ; space:" " }`)
	equal(t, "@media screen and (min-width: 768px) { .container { width: 750px; }}", `@ ident:"media" space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"min-width" : space:" " number:"768" ident:"px" ) space:" " { space:" " . ident:"container" space:" " { space:" " ident:"width" : space:" " number:"750" ident:"px" ; space:" " } }`)
	equal(t, ".tooltip:hover::after { content: attr(data-tooltip-text); color: #fff; }", `. ident:"tooltip" : ident:"hover" :: ident:"after" space:" " { space:" " ident:"content" : space:" " ident:"attr" ( ident:"data-tooltip-text" ) ; space:" " ident:"color" : space:" " # ident:"fff" ; space:" " }`)
	equal(t, "h1 + *[rel='up'] { margin-bottom: 0; }", `ident:"h1" space:" " + space:" " * [ ident:"rel" = string:"'up'" ] space:" " { space:" " ident:"margin-bottom" : space:" " number:"0" ; space:" " }`)
	equal(t, "ul li:nth-last-child(-n+2) { font-weight: bold; }", `ident:"ul" space:" " ident:"li" : ident:"nth-last-child" ( - ident:"n" + number:"2" ) space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, "ul li:nth-last-child(-n) { font-weight: bold; }", `ident:"ul" space:" " ident:"li" : ident:"nth-last-child" ( - ident:"n" ) space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, "ul li:nth-last-child(-30n+20) { font-weight: bold; }", `ident:"ul" space:" " ident:"li" : ident:"nth-last-child" ( number:"-30" ident:"n" + number:"20" ) space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, "ul li:nth-last-child(30n+20) { font-weight: bold; }", `ident:"ul" space:" " ident:"li" : ident:"nth-last-child" ( number:"30" ident:"n" + number:"20" ) space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, "ul li:nth-last-child(30n) { font-weight: bold; }", `ident:"ul" space:" " ident:"li" : ident:"nth-last-child" ( number:"30" ident:"n" ) space:" " { space:" " ident:"font-weight" : space:" " ident:"bold" ; space:" " }`)
	equal(t, ":is(.header, .footer) a:not(:hover) { text-decoration: none; }", `: ident:"is" ( . ident:"header" , space:" " . ident:"footer" ) space:" " ident:"a" : ident:"not" ( : ident:"hover" ) space:" " { space:" " ident:"text-decoration" : space:" " ident:"none" ; space:" " }`)
	equal(t, ".box::before { content: '★'; position: absolute; }", `. ident:"box" :: ident:"before" space:" " { space:" " ident:"content" : space:" " string:"'★'" ; space:" " ident:"position" : space:" " ident:"absolute" ; space:" " }`)
	equal(t, "a:visited, a:link { color: #4a4a4a; }", `ident:"a" : ident:"visited" , space:" " ident:"a" : ident:"link" space:" " { space:" " ident:"color" : space:" " # ident:"4a4a4a" ; space:" " }`)
	equal(t, "html[data-theme='dark'] .card { background-color: #333; color: white; }", `ident:"html" [ ident:"data-theme" = string:"'dark'" ] space:" " . ident:"card" space:" " { space:" " ident:"background-color" : space:" " # ident:"333" ; space:" " ident:"color" : space:" " ident:"white" ; space:" " }`)
	equal(t, "@supports (display: grid) { .grid { display: grid; }}", `@ ident:"supports" space:" " ( ident:"display" : space:" " ident:"grid" ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } }`)
	equal(t, `@supports (display: grid) and (transform-origin: 5% 5%) { .grid { display: grid; }}`, `@ ident:"supports" space:" " ( ident:"display" : space:" " ident:"grid" ) space:" " ident:"and" space:" " ( ident:"transform-origin" : space:" " number:"5" percent:"%" space:" " number:"5" percent:"%" ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } }`)
	equal(t, `@supports selector(h2 > p) { .grid { display: grid; } }`, `@ ident:"supports" space:" " ident:"selector" ( ident:"h2" space:" " > space:" " ident:"p" ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } space:" " }`)
	equal(t, `@supports selector(h2 ~ p) { .grid { display: grid; } }`, `@ ident:"supports" space:" " ident:"selector" ( ident:"h2" space:" " ~ space:" " ident:"p" ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } space:" " }`)
	equal(t, `@supports selector(h2 + p) { .grid { display: grid; } }`, `@ ident:"supports" space:" " ident:"selector" ( ident:"h2" space:" " + space:" " ident:"p" ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } space:" " }`)
	equal(t, `@supports selector(:not(.h2)) { .grid { display: grid; } }`, `@ ident:"supports" space:" " ident:"selector" ( : ident:"not" ( . ident:"h2" ) ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } space:" " }`)
	equal(t, `@supports font-tech(color-COLRv1) { .grid { display: grid; } }`, `@ ident:"supports" space:" " ident:"font-tech" ( ident:"color-COLRv1" ) space:" " { space:" " . ident:"grid" space:" " { space:" " ident:"display" : space:" " ident:"grid" ; space:" " } space:" " }`)
	equal(t, ":root { --main-bg-color: #0063e5; }", `: ident:"root" space:" " { space:" " -- ident:"main-bg-color" : space:" " # ident:"0063e5" ; space:" " }`)
	equal(t, "body { background-color: var(--main-bg-color, #000); }", `ident:"body" space:" " { space:" " ident:"background-color" : space:" " ident:"var" ( -- ident:"main-bg-color" , space:" " # ident:"000" ) ; space:" " }`)
	equal(t, ".scroll-snap-container { scroll-snap-type: y mandatory; }", `. ident:"scroll-snap-container" space:" " { space:" " ident:"scroll-snap-type" : space:" " ident:"y" space:" " ident:"mandatory" ; space:" " }`)
	equal(t, "@keyframes slidein { from { transform: translateX(0%); } to { transform: translateX(100%); }}", `@ ident:"keyframes" space:" " ident:"slidein" space:" " { space:" " ident:"from" space:" " { space:" " ident:"transform" : space:" " ident:"translateX" ( number:"0" percent:"%" ) ; space:" " } space:" " ident:"to" space:" " { space:" " ident:"transform" : space:" " ident:"translateX" ( number:"100" percent:"%" ) ; space:" " } }`)
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
	`, `space:"\n" space:"\t\t" . ident:"container" space:" " { space:"\n" space:"\t\t\t" ident:"display" : space:" " ident:"grid" ; space:"\n" space:"\t\t\t" ident:"grid-template-areas" : space:"\n" space:"\t\t\t\t" string:"\"header\"" space:"\n" space:"\t\t\t\t" string:"\"main\"" space:"\n" space:"\t\t\t\t" string:"\"sidebar\"" space:"\n" space:"\t\t\t\t" string:"\"footer\"" ; space:"\n" space:"\t\t\t" ident:"grid-template-columns" : space:" " number:"1" ident:"fr" ; space:"\n" space:"\t\t\t" ident:"grid-template-rows" : space:" " ident:"auto" space:" " number:"1" ident:"fr" space:" " ident:"auto" space:" " ident:"auto" ; space:"\n" space:"\t\t\t" ident:"gap" : space:" " number:"10" ident:"px" ; space:"\n" space:"\t\t" } space:"\n" space:"\t"`)
	equal(t, `@media (min-width: 768px) {
		.container {
			grid-template-areas:
				"header header header"
				"main main sidebar"
				"footer footer footer";
			grid-template-columns: 2fr 1fr 1fr;
			grid-template-rows: auto 1fr auto;
		}
	}`, `@ ident:"media" space:" " ( ident:"min-width" : space:" " number:"768" ident:"px" ) space:" " { space:"\n" space:"\t\t" . ident:"container" space:" " { space:"\n" space:"\t\t\t" ident:"grid-template-areas" : space:"\n" space:"\t\t\t\t" string:"\"header header header\"" space:"\n" space:"\t\t\t\t" string:"\"main main sidebar\"" space:"\n" space:"\t\t\t\t" string:"\"footer footer footer\"" ; space:"\n" space:"\t\t\t" ident:"grid-template-columns" : space:" " number:"2" ident:"fr" space:" " number:"1" ident:"fr" space:" " number:"1" ident:"fr" ; space:"\n" space:"\t\t\t" ident:"grid-template-rows" : space:" " ident:"auto" space:" " number:"1" ident:"fr" space:" " ident:"auto" ; space:"\n" space:"\t\t" } space:"\n" space:"\t" }`)
	equal(t, `audio:not([controls]) { display: none; }`, `ident:"audio" : ident:"not" ( [ ident:"controls" ] ) space:" " { space:" " ident:"display" : space:" " ident:"none" ; space:" " }`)
	equal(t, `@media print { a[href]:after { content: " (" attr(href) ")"; } }`, `@ ident:"media" space:" " ident:"print" space:" " { space:" " ident:"a" [ ident:"href" ] : ident:"after" space:" " { space:" " ident:"content" : space:" " string:"\" (\"" space:" " ident:"attr" ( ident:"href" ) space:" " string:"\")\"" ; space:" " } space:" " }`)
	equal(t, `@media print { .btn > .caret { background-color: blue; } }`, `@ ident:"media" space:" " ident:"print" space:" " { space:" " . ident:"btn" space:" " > space:" " . ident:"caret" space:" " { space:" " ident:"background-color" : space:" " ident:"blue" ; space:" " } space:" " }`)
	equal(t, `.card-group > .card + .card { background: green; }`, `. ident:"card-group" space:" " > space:" " . ident:"card" space:" " + space:" " . ident:"card" space:" " { space:" " ident:"background" : space:" " ident:"green" ; space:" " }`)
	equal(t, `@media print { .card-group > .card + .card { background: green; } }`, `@ ident:"media" space:" " ident:"print" space:" " { space:" " . ident:"card-group" space:" " > space:" " . ident:"card" space:" " + space:" " . ident:"card" space:" " { space:" " ident:"background" : space:" " ident:"green" ; space:" " } space:" " }`)
	equal(t, `body{ background: url(../hello?iefix=1); }`, `ident:"body" { space:" " ident:"background" : space:" " ident:"url" ( string:"../hello?iefix=1" ) ; space:" " }`)
	equal(t, `[href$=".com"]{ background: blue; }`, `[ ident:"href" $= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href^=".com"]{ background: blue; }`, `[ ident:"href" ^= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href~=".com"]{ background: blue; }`, `[ ident:"href" ~= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href*=".com"]{ background: blue; }`, `[ ident:"href" *= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `[href|=".com"]{ background: blue; }`, `[ ident:"href" |= string:"\".com\"" ] { space:" " ident:"background" : space:" " ident:"blue" ; space:" " }`)
	equal(t, `a { background: linear-gradient(180deg, rgba(255, 255, 255, 0.15), rgba(255, 255, 255, 0)) }`, `ident:"a" space:" " { space:" " ident:"background" : space:" " ident:"linear-gradient" ( number:"180" ident:"deg" , space:" " ident:"rgba" ( number:"255" , space:" " number:"255" , space:" " number:"255" , space:" " number:"0.15" ) , space:" " ident:"rgba" ( number:"255" , space:" " number:"255" , space:" " number:"255" , space:" " number:"0" ) ) space:" " }`)
	equal(t, `html { -ms-text-size-adjust: 100%; /* 2 */ }`, `ident:"html" space:" " { space:" " - ident:"ms-text-size-adjust" : space:" " number:"100" percent:"%" ; space:" " comment:"/* 2 */" space:" " }`)
	equal(t, `@media screen { .form-control::-webkit-file-upload-button {} }`, `@ ident:"media" space:" " ident:"screen" space:" " { space:" " . ident:"form-control" :: - ident:"webkit-file-upload-button" space:" " { } space:" " }`)
	equal(t, `.dropdown-toggle:nth-last-child(n+3) {}`, `. ident:"dropdown-toggle" : ident:"nth-last-child" ( ident:"n" + number:"3" ) space:" " { }`)
	equal(t, `.card-group > .card:not(:last-child) {}`, `. ident:"card-group" space:" " > space:" " . ident:"card" : ident:"not" ( : ident:"last-child" ) space:" " { }`)
	equal(t, `@media screen { .card-group > .card:not(:last-child) {} }`, `@ ident:"media" space:" " ident:"screen" space:" " { space:" " . ident:"card-group" space:" " > space:" " . ident:"card" : ident:"not" ( : ident:"last-child" ) space:" " { } space:" " }`)
	equal(t, `body { padding-right: calc(var(--bs-gutter-x) * 0.5); }`, `ident:"body" space:" " { space:" " ident:"padding-right" : space:" " ident:"calc" ( ident:"var" ( -- ident:"bs-gutter-x" ) space:" " * space:" " number:"0.5" ) ; space:" " }`)
	equal(t, `body { padding-right: calc(var(--bs-gutter-x) / 0.5); }`, `ident:"body" space:" " { space:" " ident:"padding-right" : space:" " ident:"calc" ( ident:"var" ( -- ident:"bs-gutter-x" ) space:" " / space:" " number:"0.5" ) ; space:" " }`)
	equal(t, `body { padding-right: calc(var(--bs-gutter-x) / (1*0.5)); }`, `ident:"body" space:" " { space:" " ident:"padding-right" : space:" " ident:"calc" ( ident:"var" ( -- ident:"bs-gutter-x" ) space:" " / space:" " ( number:"1" * number:"0.5" ) ) ; space:" " }`)
	equal(t, `.display-none{display:none!important}`, `. ident:"display-none" { ident:"display" : ident:"none" ! ident:"important" }`)
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

func TestImports(t *testing.T) {
	equal(t, `@import "custom.css";`, `@ ident:"import" space:" " string:"\"custom.css\"" ;`)
	equal(t, `@import url("custom.css");`, `@ ident:"import" space:" " ident:"url" ( string:"\"custom.css\"" ) ;`)
	equal(t, `@import url("chrome://communicator/skin/");`, `@ ident:"import" space:" " ident:"url" ( string:"\"chrome://communicator/skin/\"" ) ;`)
	equal(t, `@import url("fineprint.css") print;`, `@ ident:"import" space:" " ident:"url" ( string:"\"fineprint.css\"" ) space:" " ident:"print" ;`)
	equal(t, `@import url("bluish.css") print, screen;`, `@ ident:"import" space:" " ident:"url" ( string:"\"bluish.css\"" ) space:" " ident:"print" , space:" " ident:"screen" ;`)
	equal(t, `@import "common.css" screen;`, `@ ident:"import" space:" " string:"\"common.css\"" space:" " ident:"screen" ;`)
	equal(t, `@import url("landscape.css") screen and (orientation: landscape);`, `@ ident:"import" space:" " ident:"url" ( string:"\"landscape.css\"" ) space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"orientation" : space:" " ident:"landscape" ) ;`)
	equal(t, `@import url("gridy.css") supports(display: grid) screen and (max-width: 400px);`, `@ ident:"import" space:" " ident:"url" ( string:"\"gridy.css\"" ) space:" " ident:"supports" ( ident:"display" : space:" " ident:"grid" ) space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"max-width" : space:" " number:"400" ident:"px" ) ;`)
	equal(t, `@import url("flexy.css") supports(not (display: grid) and (display: flex)) screen and (max-width: 400px);`, `@ ident:"import" space:" " ident:"url" ( string:"\"flexy.css\"" ) space:" " ident:"supports" ( ident:"not" space:" " ( ident:"display" : space:" " ident:"grid" ) space:" " ident:"and" space:" " ( ident:"display" : space:" " ident:"flex" ) ) space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"max-width" : space:" " number:"400" ident:"px" ) ;`)
	equal(t, `@import url("whatever.css") supports((selector(h2 > p)) and (font-tech(color-COLRv1)));`, `@ ident:"import" space:" " ident:"url" ( string:"\"whatever.css\"" ) space:" " ident:"supports" ( ( ident:"selector" ( ident:"h2" space:" " > space:" " ident:"p" ) ) space:" " ident:"and" space:" " ( ident:"font-tech" ( ident:"color-COLRv1" ) ) ) ;`)
	equal(t, `@import "theme.css" layer(utilities);`, `@ ident:"import" space:" " string:"\"theme.css\"" space:" " ident:"layer" ( ident:"utilities" ) ;`)
	equal(t, `@import url(headings.css) layer(default);`, `@ ident:"import" space:" " ident:"url" ( ident:"headings" . ident:"css" ) space:" " ident:"layer" ( ident:"default" ) ;`)
	equal(t, `@import url(links.css) layer(default);`, `@ ident:"import" space:" " ident:"url" ( ident:"links" . ident:"css" ) space:" " ident:"layer" ( ident:"default" ) ;`)
	equal(t, `@import "theme.css" layer();`, `@ ident:"import" space:" " string:"\"theme.css\"" space:" " ident:"layer" ( ) ;`)
	equal(t, `@import "style.css" layer;`, `@ ident:"import" space:" " string:"\"style.css\"" space:" " ident:"layer" ;`)
}

func TestMediaQuery(t *testing.T) {
	equal(t, `@media print { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"print" space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media print, screen { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"print" , space:" " ident:"screen" space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (hover: hover) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"hover" : space:" " ident:"hover" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media print and (orientation: portrait) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"print" space:" " ident:"and" space:" " ( ident:"orientation" : space:" " ident:"portrait" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (max-width: 1250px) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"max-width" : space:" " number:"1250" ident:"px" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (width <= 1250px) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"width" space:" " <= space:" " number:"1250" ident:"px" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (min-width: 30em) and (max-width: 50em) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"min-width" : space:" " number:"30" ident:"em" ) space:" " ident:"and" space:" " ( ident:"max-width" : space:" " number:"50" ident:"em" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (30em <= width <= 50em) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( number:"30" ident:"em" space:" " <= space:" " ident:"width" space:" " <= space:" " number:"50" ident:"em" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (30em < width < 50em) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( number:"30" ident:"em" space:" " < space:" " ident:"width" space:" " < space:" " number:"50" ident:"em" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (color) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"color" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (min-width: 30em) and (orientation: landscape) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"min-width" : space:" " number:"30" ident:"em" ) space:" " ident:"and" space:" " ( ident:"orientation" : space:" " ident:"landscape" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media screen and (min-width: 30em) and (orientation: landscape) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"min-width" : space:" " number:"30" ident:"em" ) space:" " ident:"and" space:" " ( ident:"orientation" : space:" " ident:"landscape" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (min-height: 680px), screen and (orientation: portrait) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"min-height" : space:" " number:"680" ident:"px" ) , space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"orientation" : space:" " ident:"portrait" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media not print { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"not" space:" " ident:"print" space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media not screen and (color), print and (color) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"not" space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"color" ) , space:" " ident:"print" space:" " ident:"and" space:" " ( ident:"color" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (not (screen and (color))), print and (color) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"not" space:" " ( ident:"screen" space:" " ident:"and" space:" " ( ident:"color" ) ) ) , space:" " ident:"print" space:" " ident:"and" space:" " ( ident:"color" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media not (all and (monochrome)) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"not" space:" " ( ident:"all" space:" " ident:"and" space:" " ( ident:"monochrome" ) ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media all and (not(hover)) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"all" space:" " ident:"and" space:" " ( ident:"not" ( ident:"hover" ) ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media only screen and (color) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ident:"only" space:" " ident:"screen" space:" " ident:"and" space:" " ( ident:"color" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
	equal(t, `@media (not (color)) or (hover) { body { font-size: 10pt; } }`, `@ ident:"media" space:" " ( ident:"not" space:" " ( ident:"color" ) ) space:" " ident:"or" space:" " ( ident:"hover" ) space:" " { space:" " ident:"body" space:" " { space:" " ident:"font-size" : space:" " number:"10" ident:"pt" ; space:" " } space:" " }`)
}

func TestLineNumbers(t *testing.T) {
	equalLines(t, `
	`, `
		space:"\n" 1
		space:"\t" 2
	`)
	equalLines(t, `
		/* This is a comment */
		body {
			margin: 0;
		}
	`, `
		space:"\n" 1
		space:"\t\t" 2
		comment:"/* This is a comment */" 2
		space:"\n" 2
		space:"\t\t" 3
		ident:"body" 3
		space:" " 3
		{ 3
		space:"\n" 3
		space:"\t\t\t" 4
		ident:"margin" 4
		: 4
		space:" " 4
		number:"0" 4
		; 4
		space:"\n" 4
		space:"\t\t" 5
		} 5
		space:"\n" 5
		space:"\t" 6
	`)
	equalLines(t, `
		/* This is
		a comment */
		body {
			margin: 0;
		}
	`, `
		space:"\n" 1
		space:"\t\t" 2
		comment:"/* This is\n\t\ta comment */" 2
		space:"\n" 3
		space:"\t\t" 4
		ident:"body" 4
		space:" " 4
		{ 4
		space:"\n" 4
		space:"\t\t\t" 5
		ident:"margin" 5
		: 5
		space:" " 5
		number:"0" 5
		; 5
		space:"\n" 5
		space:"\t\t" 6
		} 6
		space:"\n" 6
		space:"\t" 7
	`)
	equalLines(t, `
		/* This is a comment */
		body {
			margin: 0;
		}
		@media screen and (min-width: 600px) {
			body {
				margin: 0;
			}
		}
	`, `
		space:"\n" 1
		space:"\t\t" 2
		comment:"/* This is a comment */" 2
		space:"\n" 2
		space:"\t\t" 3
		ident:"body" 3
		space:" " 3
		{ 3
		space:"\n" 3
		space:"\t\t\t" 4
		ident:"margin" 4
		: 4
		space:" " 4
		number:"0" 4
		; 4
		space:"\n" 4
		space:"\t\t" 5
		} 5
		space:"\n" 5
		space:"\t\t" 6
		@ 6
		ident:"media" 6
		space:" " 6
		ident:"screen" 6
		space:" " 6
		ident:"and" 6
		space:" " 6
		( 6
		ident:"min-width" 6
		: 6
		space:" " 6
		number:"600" 6
		ident:"px" 6
		) 6
		space:" " 6
		{ 6
		space:"\n" 6
		space:"\t\t\t" 7
		ident:"body" 7
		space:" " 7
		{ 7
		space:"\n" 7
		space:"\t\t\t\t" 8
		ident:"margin" 8
		: 8
		space:" " 8
		number:"0" 8
		; 8
		space:"\n" 8
		space:"\t\t\t" 9
		} 9
		space:"\n" 9
		space:"\t\t" 10
		} 10
		space:"\n" 10
		space:"\t" 11
	`)
}

func TestNested(t *testing.T) {
	equal(t, `label { input { margin: 0 } }`, `ident:"label" space:" " { space:" " ident:"input" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { & input { margin: 0 } }`, `ident:"label" space:" " { space:" " & space:" " ident:"input" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { input & { margin: 0 } }`, `ident:"label" space:" " { space:" " ident:"input" space:" " & space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { input>& { margin: 0 } }`, `ident:"label" space:" " { space:" " ident:"input" > & space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { input~& { margin: 0 } }`, `ident:"label" space:" " { space:" " ident:"input" ~ & space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { input+& { margin: 0 } }`, `ident:"label" space:" " { space:" " ident:"input" + & space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { input & & & { margin: 0 } }`, `ident:"label" space:" " { space:" " ident:"input" space:" " & space:" " & space:" " & space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { &>input { margin: 0 } }`, `ident:"label" space:" " { space:" " & > ident:"input" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { &+input { margin: 0 } }`, `ident:"label" space:" " { space:" " & + ident:"input" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { &~input { margin: 0 } }`, `ident:"label" space:" " { space:" " & ~ ident:"input" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { &:hover { margin: 0 } }`, `ident:"label" space:" " { space:" " & : ident:"hover" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `label { &:hover, &:focus { margin: 0 } }`, `ident:"label" space:" " { space:" " & : ident:"hover" , space:" " & : ident:"focus" space:" " { space:" " ident:"margin" : space:" " number:"0" space:" " } space:" " }`)
	equal(t, `& { color: blue }`, `& space:" " { space:" " ident:"color" : space:" " ident:"blue" space:" " }`)
	equal(t, `&:hover { color: blue }`, `& : ident:"hover" space:" " { space:" " ident:"color" : space:" " ident:"blue" space:" " }`)
}

func TestFile(t *testing.T) {
	equalFile(t, "normalize.css")
	equalFile(t, "preflight.css")
	equalFile(t, "tachyons.css")
	equalFile(t, "bootstrap4.css")
	equalFile(t, "bootstrap.css")
	equalFile(t, "basscss.min.css.txt")
	equalFile(t, "bootstrap.min.css.txt")
	equalFile(t, "atom.io.css")
	equalFile(t, "github.com.css")
	// equalFile(t, "tailwind.css")
}
