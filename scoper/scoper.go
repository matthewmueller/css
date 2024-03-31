package scoper

import (
	"strings"

	"github.com/matthewmueller/css"
	"github.com/matthewmueller/css/ast"
	"github.com/matthewmueller/css/internal/parser"
	"github.com/matthewmueller/css/visitor"
)

func Scope(path, scope, input string) (string, error) {
	stylesheet, err := css.Parse(path, input)
	if err != nil {
		return "", err
	}
	stylesheet, err = ScopeAST(path, scope, stylesheet)
	if err != nil {
		return "", err
	}
	return stylesheet.String(), nil
}

func ScopeAST(path, scope string, stylesheet *ast.Stylesheet) (*ast.Stylesheet, error) {
	scoping, err := parser.ParseSelectorComponent(path, scope)
	if err != nil {
		return nil, err
	}
	visitor := visitor.New()
	visitor.Selector = func(n *ast.Selector) {
		scoped := make([]ast.SelectorComponent, 0, len(n.Components)*2)
		added := false
		for _, component := range n.Components {
			switch component.(type) {
			// Add once before the first pseudo element or class
			case *ast.PseudoElementComponent, *ast.PseudoClassComponent, *ast.AttributeComponent:
				if !added {
					scoped = append(scoped, scoping)
				}
				added = true
			case *ast.CombinatorComponent:
				// Add once before the separator and reset added
				if !added {
					scoped = append(scoped, scoping)
				}
				added = false
			}
			scoped = append(scoped, component)
		}
		// Tack on at the end if we haven't added it yet
		if !added {
			scoped = append(scoped, scoping)
		}
		n.Components = scoped
	}
	// visitor.ElementComponent = func(n *ast.ElementComponent) {
	// 	n.Name += scope
	// }
	// visitor.IdComponent = func(n *ast.IdComponent) {
	// 	n.Name += scope
	// }
	// visitor.ClassComponent = func(n *ast.ClassComponent) {
	// 	n.Name += scope
	// }
	// visitor.UniversalComponent = func(n *ast.UniversalComponent) {
	// 	n.Name += scope
	// }
	// visitor.PseudoClassComponent = func(n *ast.PseudoClassComponent) {
	// 	if n.Name == "root" {
	// 		n.Name += scope
	// 	}
	// }
	visitor.KeyFramesRule = func(n *ast.KeyFramesRule) {
		n.Name += strings.Replace(scope, ".", "-", -1)
	}
	stylesheet.Visit(visitor)
	return stylesheet, nil
}
