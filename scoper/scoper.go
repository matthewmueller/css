package scoper

import (
	"strings"
	"unicode"

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

func getID(scoping ast.SelectorComponent) string {
	selector := scoping.String()
	// Replace all non-letter and non-digit characters with a dash
	sb := new(strings.Builder)
	for _, r := range selector {
		if unicode.IsLetter(r) || unicode.IsDigit(r) {
			sb.WriteRune(r)
		}
	}
	return sb.String()
}

func ScopeAST(path, scope string, stylesheet *ast.Stylesheet) (*ast.Stylesheet, error) {
	scoping, err := parser.ParseSelectorComponent(path, scope)
	if err != nil {
		return nil, err
	}
	selectorVisitor := visitor.New()
	selectorVisitor.Selector = func(n *ast.Selector) {
		scoped := make([]ast.SelectorComponent, 0, len(n.Components)*2)
		added := false
		for _, component := range n.Components {
			switch n := component.(type) {
			case *ast.PseudoClassComponent:
				if n.Name == "global" {
					for _, arg := range n.Args {
						switch arg := arg.(type) {
						case *ast.Keyword:
							scoped = append(scoped, &ast.ElementComponent{Name: arg.Name})
						case *ast.Selector:
							scoped = append(scoped, arg.Components...)
						}
					}
					added = true
					continue
				}
				if !added {
					scoped = append(scoped, scoping)
				}
				added = true

			// Add once before the first pseudo element or class
			case *ast.PseudoElementComponent, *ast.AttributeComponent:
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

	// Scope keyframes
	id := getID(scoping)
	keyframes := map[string]string{}
	selectorVisitor.KeyFramesRule = func(n *ast.KeyFramesRule) {
		scoped := n.Name + "-" + id
		keyframes[n.Name] = scoped
		n.Name = scoped
	}
	// Need to do one more iteration to support @keyframes below declarations
	animationVisitor := visitor.New()
	animationVisitor.Declaration = func(n *ast.Declaration) {
		if n.Property != "animation-name" && n.Property != "animation" {
			return
		}
		n.Value.Visit(animationVisitor)
	}
	animationVisitor.KeywordValue = func(n *ast.Keyword) {
		if scoped, ok := keyframes[n.Name]; ok {
			n.Name = scoped
		}
	}

	stylesheet.Visit(selectorVisitor)
	stylesheet.Visit(animationVisitor)
	return stylesheet, nil
}
