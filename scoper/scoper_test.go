package scoper_test

import (
	"os"
	"testing"

	"github.com/matthewmueller/css/scoper"
	"github.com/matthewmueller/diff"
)

func equal(t *testing.T, input, expect string) {
	t.Helper()
	t.Run(input, func(t *testing.T) {
		t.Helper()
		actual, err := scoper.Scope("input.css", ".jsx-123", input)
		if err != nil {
			diff.TestString(t, err.Error(), expect)
			return
		}
		diff.TestString(t, actual, expect)
	})
}

func TestSample(t *testing.T) {
	equal(t, "body {}", `body.jsx-123 {  }`)
	equal(t, "#id {}", `#id.jsx-123 {  }`)
	equal(t, "h1 {}", `h1.jsx-123 {  }`)
	equal(t, "h1{}", `h1.jsx-123 {  }`)
	equal(t, ".class {}", `.class.jsx-123 {  }`)
	equal(t, "a:hover {}", `a.jsx-123:hover {  }`)
	equal(t, "a:hover:visit h1 {}", `a.jsx-123:hover:visit h1.jsx-123 {  }`)
	equal(t, "a:hover, span, c:active {}", `a.jsx-123:hover, span.jsx-123, c.jsx-123:active {  }`)
	equal(t, "div, span {}", `div.jsx-123, span.jsx-123 {  }`)
	equal(t, "@media (max-width: 600px) { .responsive { display: none; }}", "@media (max-width: 600px) {\n  .responsive.jsx-123 { display: none }\n}")
	equal(t, "@media (max-width: 600px) { .responsive, .cool { display: none; }}", "@media (max-width: 600px) {\n  .responsive.jsx-123, .cool.jsx-123 { display: none }\n}")
	equal(t, "@media screen and (min-width: 30em) and (max-width: 60em) {}", "@media screen and (min-width: 30em) and (max-width: 60em) {}")
	equal(t, "* {}", `*.jsx-123 {  }`)
	equal(t, "img[alt='logo'] {}", `img.jsx-123[alt='logo'] {  }`)
	equal(t, "img[alt='logo'][class~='cool'] {}", `img.jsx-123[alt='logo'][class~='cool'] {  }`)
	equal(t, "@font-face { font-family: 'MyFont'; src: url('myfont.woff2'); }", `@font-face { font-family: 'MyFont'; src: url('myfont.woff2') }`)
	equal(t, `@font-face { font-family: 'MyFont'; src: local("some font"), url('myfont.woff2'); }`, `@font-face { font-family: 'MyFont'; src: local("some font"), url('myfont.woff2') }`)
	equal(t, "p::after {}", `p.jsx-123::after {  }`)
	equal(t, "ul > li {}", `ul.jsx-123 > li.jsx-123 {  }`)
	equal(t, ":root {}", `.jsx-123:root {  }`)
	equal(t, ".container::before, .container::after {}", `.container.jsx-123::before, .container.jsx-123::after {  }`)
	equal(t, "header ~ footer {}", `header.jsx-123 ~ footer.jsx-123 {  }`)
	equal(t, "header + footer {}", `header.jsx-123 + footer.jsx-123 {  }`)
	equal(t, "[data-theme='dark'] {}", `.jsx-123[data-theme='dark'] {  }`)
	equal(t, `
		.box {
		}

		.box:hover, .circle {
		}
	`, ".box.jsx-123 {  }\n.box.jsx-123:hover, .circle.jsx-123 {  }")
}

func TestComplex(t *testing.T) {
	equal(t, "body:not(.no-js) .feature {}", `body.jsx-123:not(.no-js) .feature.jsx-123 {  }`)
	equal(t, "li:first-child + li {}", `li.jsx-123:first-child + li.jsx-123 {  }`)
	equal(t, "a[href^='https://']:after {}", `a.jsx-123[href^='https://']:after {  }`)
	equal(t, "input[type='text']:focus {}", `input.jsx-123[type='text']:focus {  }`)
	equal(t, "div > p::first-line {}", `div.jsx-123 > p.jsx-123::first-line {  }`)
	equal(t, "table td:nth-of-type(odd) {}", `table.jsx-123 td.jsx-123:nth-of-type(odd) {  }`)
	equal(t, "@media screen and (min-width: 768px) { .container {}}", "@media screen and (min-width: 768px) {\n  .container.jsx-123 {  }\n}")
	equal(t, ".tooltip:hover::after {}", `.tooltip.jsx-123:hover::after {  }`)
	equal(t, "h1 + *[rel='up'] {}", `h1.jsx-123 + *.jsx-123[rel='up'] {  }`)
	equal(t, "ul li:nth-last-child(-n+2) {}", `ul.jsx-123 li.jsx-123:nth-last-child(-n + 2) {  }`)
	equal(t, "ul li:nth-last-child(-n) {}", `ul.jsx-123 li.jsx-123:nth-last-child(-n) {  }`)
	equal(t, "ul li:nth-last-child(-30n+20) {}", `ul.jsx-123 li.jsx-123:nth-last-child(-30n + 20) {  }`)
	equal(t, "ul li:nth-last-child(30n+20) {}", `ul.jsx-123 li.jsx-123:nth-last-child(30n + 20) {  }`)
	equal(t, "ul li:nth-last-child(30n) {}", `ul.jsx-123 li.jsx-123:nth-last-child(30n) {  }`)
	equal(t, "ul li:nth-last-child(30) {}", `ul.jsx-123 li.jsx-123:nth-last-child(30) {  }`)
	equal(t, ":is(.header, .footer) a:not(:hover) {}", `.jsx-123:is(.header, .footer) a.jsx-123:not(:hover) {  }`)
	equal(t, ".box::before {}", `.box.jsx-123::before {  }`)
	equal(t, "a:visited, a:link {}", `a.jsx-123:visited, a.jsx-123:link {  }`)
	equal(t, "html[data-theme='dark'] .card {}", `html.jsx-123[data-theme='dark'] .card.jsx-123 {  }`)
	equal(t, "@supports (display: grid) {}", `@supports (display: grid) {}`)
	equal(t, `@supports (display: grid) and (transform-origin: 5% 5%) {}`, `@supports (display: grid) and (transform-origin: 5% 5%) {}`)
	equal(t, `@supports selector(h2 > p) {}`, `@supports selector(h2.jsx-123 > p.jsx-123) {}`)
	equal(t, `@supports selector(h2 ~ p) {}`, `@supports selector(h2.jsx-123 ~ p.jsx-123) {}`)
	equal(t, `@supports selector(h2 + p) {}`, `@supports selector(h2.jsx-123 + p.jsx-123) {}`)
	equal(t, `@supports selector(:not(.h2)) {}`, `@supports selector(.jsx-123:not(.h2)) {}`)
	equal(t, `@supports font-tech(color-COLRv1) {}`, `@supports font-tech(color-COLRv1) {}`)
	equal(t, ":root { --main-bg-color: #0063e5; }", `.jsx-123:root { --main-bg-color: #0063e5 }`)
	equal(t, `audio:not([controls]) {}`, `audio.jsx-123:not([controls]) {  }`)
	equal(t, `@media print { a[href]:after {} }`, "@media print {\n  a.jsx-123[href]:after {  }\n}")
	equal(t, `@media print { .btn > .caret {} }`, "@media print {\n  .btn.jsx-123 > .caret.jsx-123 {  }\n}")
	equal(t, `.card-group > .card + .card {}`, ".card-group.jsx-123 > .card.jsx-123 + .card.jsx-123 {  }")
	equal(t, `@media print { .card-group > .card + .card {} }`, "@media print {\n  .card-group.jsx-123 > .card.jsx-123 + .card.jsx-123 {  }\n}")
	equal(t, `[href$=".com"]{}`, ".jsx-123[href$=\".com\"] {  }")
	equal(t, `[href^=".com"]{}`, ".jsx-123[href^=\".com\"] {  }")
	equal(t, `[href~=".com"]{}`, ".jsx-123[href~=\".com\"] {  }")
	equal(t, `[href*=".com"]{}`, ".jsx-123[href*=\".com\"] {  }")
	equal(t, `[href|=".com"]{}`, ".jsx-123[href|=\".com\"] {  }")
	equal(t, `@media screen {}`, "@media screen {}")
	equal(t, `.dropdown-toggle:nth-last-child(n+3) {}`, ".dropdown-toggle.jsx-123:nth-last-child(n + 3) {  }")
	equal(t, `.card-group > .card:not(:last-child) {}`, ".card-group.jsx-123 > .card.jsx-123:not(:last-child) {  }")
	equal(t, `@media screen { .card-group > .card:not(:last-child) {} }`, "@media screen {\n  .card-group.jsx-123 > .card.jsx-123:not(:last-child) {  }\n}")
	equal(t, `.display-none{}`, ".display-none.jsx-123 {  }")
}

func TestGlobal(t *testing.T) {
	equal(t, ":global(p) { color: blue; }", `p { color: blue }`)
	equal(t, ":global(p) { color: blue; }", `p { color: blue }`)
	equal(t, ":global(p), a { color: blue; }", `p, a.jsx-123 { color: blue }`)
	equal(t, ":global(.foo + a) { color: red; }", `.foo + a { color: red }`)
	equal(t, ":global(body) { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif; }", `body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif }`)
	equal(t, "p :global(span) { background: blue; }", `p.jsx-123 span { background: blue }`)
	equal(t, "p :global(span:not(.test)) { color: green; }", `p.jsx-123 span:not(.test) { color: green }`)
	equal(t, `div :global(.react-select) { color: red; }`, `div.jsx-123 .react-select { color: red }`)
}

func TestScopedKeyframe(t *testing.T) {
	equal(t, "@keyframes slideIn { from { } to { } } header + footer { animation: 3s linear 1s slideIn; }", "@keyframes slideIn-jsx123 { from {  } to {  } }\nheader.jsx-123 + footer.jsx-123 { animation: 3s linear 1s slideIn-jsx123 }")
	equal(t, "@keyframes slideOut { from { } to { } } header + footer { animation: slideOut 5s infinite; }", "@keyframes slideOut-jsx123 { from {  } to {  } }\nheader.jsx-123 + footer.jsx-123 { animation: slideOut-jsx123 5s infinite }")
	equal(t, "@keyframes slideOut { from { } to { } } header + footer { animation-name: slideOut; }", "@keyframes slideOut-jsx123 { from {  } to {  } }\nheader.jsx-123 + footer.jsx-123 { animation-name: slideOut-jsx123 }")
	equal(t, "header + footer { animation: slideOut 5s infinite; } @keyframes slideOut { from { } to { } }", "header.jsx-123 + footer.jsx-123 { animation: slideOut-jsx123 5s infinite }\n@keyframes slideOut-jsx123 { from {  } to {  } }")
}

func ExampleScope() {
	input := `a:hover, span, .c, :global(#d) {
		color: red;
	}`
	scoped, err := scoper.Scope("input.css", ".scoped", input)
	if err != nil {
		os.Stdout.WriteString(err.Error())
	}
	os.Stdout.WriteString(scoped)
	// Output:
	// a.scoped:hover, span.scoped, .c.scoped, #d { color: red }
}
