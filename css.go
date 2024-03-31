package css

import (
	"github.com/matthewmueller/css/ast"
	"github.com/matthewmueller/css/internal/lexer"
	"github.com/matthewmueller/css/internal/parser"
)

// Parse a CSS file and returns an AST
func Parse(path, input string) (*ast.Stylesheet, error) {
	lexer := lexer.New(input)
	parser := parser.New(path, lexer)
	return parser.Parse()
}
