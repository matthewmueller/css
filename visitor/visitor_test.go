package visitor_test

import (
	"testing"

	"github.com/matthewmueller/css"
	"github.com/matthewmueller/css/ast"
	"github.com/matthewmueller/css/visitor"
	"github.com/matthewmueller/diff"
)

func TestVisitor(t *testing.T) {
	input := `@media screen and (min-width: 480px) {
		body {
			background-color: lightgreen;
		}
	}`
	stylesheet, err := css.Parse("input.css", input)
	if err != nil {
		t.Fatal(err)
	}
	visitor := visitor.New()
	visitor.ElementComponent = func(n *ast.ElementComponent) {
		n.Name = "div"
	}
	visitor.KeywordValue = func(n *ast.Keyword) {
		if n.Name == "lightgreen" {
			n.Name = "wildblue"
		}
	}
	stylesheet.Visit(visitor)
	actual := stylesheet.String()
	diff.TestString(t, actual, `@media screen and (min-width: 480px) {
  div { background-color: wildblue }
}`)
}
