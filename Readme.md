# css

[![Go Reference](https://pkg.go.dev/badge/github.com/matthewmueller/css.svg)](https://pkg.go.dev/github.com/matthewmueller/css)

WIP CSS lexer and parser for Go. Intended to be used for manipulating stylesheets.

## Status

- [x] Lexer
- [ ] Parser

## Similar

- [tdewolfe/parse](https://github.com/tdewolff/parse): Most popular. Low-level streaming grammar makes writing codemods [difficult](https://github.com/otaxhu/go-cssmodules/blob/dfc8953ab6c19678072ee85ae68bf8ff76e388e9/cssmodules.go#L124-L166). Doesn't parse selectors. Looks primarily intended for fast minification.
- [benpjohnson/css](https://github.com/benbjohnson/css): Almost what we want. Doesn't parse selectors. Hasn't been updated in 10 years.
- [gorilla/css](https://github.com/gorilla/css): Just a scanner, there's no parser.

## Related

- [matthewmueller/jsx](https://github.com/matthewmueller/jsx): JSX parser

## License

MIT
