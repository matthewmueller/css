package parser

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/matthewmueller/css/ast"
	"github.com/matthewmueller/css/internal/lexer"
	"github.com/matthewmueller/css/internal/token"
)

func Parse(path, input string) (*ast.Stylesheet, error) {
	l := lexer.New(input)
	p := New(path, l)
	return p.Parse()
}

func New(path string, l *lexer.Lexer) *Parser {
	return &Parser{path, l}
}

type Parser struct {
	path string
	l    *lexer.Lexer
}

func (p *Parser) Parse() (*ast.Stylesheet, error) {
	return p.parseStylesheet()
}

func (p *Parser) Text() string {
	return p.l.Token.Text
}

func (p *Parser) Type() token.Type {
	return p.l.Token.Type
}

// Checks that the next token is one of the given types
func (p *Parser) Is(types ...token.Type) bool {
	token := p.l.Peak(1)
	for _, t := range types {
		if token.Type == t {
			return true
		}
	}
	return false
}

// Returns true if all the given tokens are next
func (p *Parser) Check(tokens ...token.Type) bool {
	for i, token := range tokens {
		if p.l.Peak(i+1).Type != token {
			return false
		}
	}
	return true
}

func (p *Parser) More() bool {
	return p.Check(token.EOF)
}

// Returns true if any the given tokens are next
func (p *Parser) Accept(tokens ...token.Type) bool {
	if !p.Is(tokens...) {
		return false
	}
	p.l.Next()
	return true
}

func tokenList(tokens ...token.Type) string {
	sb := new(strings.Builder)
	for i, t := range tokens {
		if i > 0 {
			sb.WriteString(" or ")
		}
		sb.WriteString(strconv.Quote(string(t)))
	}
	return sb.String()
}

// Return an error if none of the given tokens are next
func (p *Parser) Expect(tokens ...token.Type) error {
	if !p.Is(tokens...) {
		return fmt.Errorf("expected %s, got %q", tokenList(tokens...), p.l.Peak(1).Text)
	}
	p.l.Next()
	return nil
}

func (p *Parser) unexpected(prefix string) error {
	return fmt.Errorf("parser: %s %w", prefix, p.l.Unexpected())
}

func (p *Parser) parseStylesheet() (*ast.Stylesheet, error) {
	var rules []ast.Rule
	for p.Accept(token.Space) {
	}
	for !p.Accept(token.EOF) {
		rule, err := p.parseRule()
		if err != nil {
			return nil, err
		}
		rules = append(rules, rule)
		for p.Accept(token.Space) {
		}
	}
	return &ast.Stylesheet{
		Rules: rules,
	}, nil
}

func (p *Parser) parseRule() (ast.Rule, error) {
	switch {
	case p.Accept(token.At):
		return p.parseAtRule()
	case p.Is(token.Dot, token.Hash, token.Identifier, token.OpenBracket, token.Star, token.Colon, token.ColonColon):
		return p.parseStyleRule()
	default:
		return nil, p.unexpected("rule")
	}
}

func (p *Parser) parseStyleRule() (*ast.StyleRule, error) {
	selectors, err := p.parseSelectors()
	if err != nil {
		return nil, err
	}
	declarations, err := p.parseDeclarations()
	if err != nil {
		return nil, err
	}
	return &ast.StyleRule{
		Selectors:    selectors,
		Declarations: declarations,
	}, nil
}

func (p *Parser) parseAtRule() (ast.Rule, error) {
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	switch p.Text() {
	case "media":
		return p.parseMediaRule()
	case "import":
		return p.parseImportRule()
	case "font-face":
		return p.parseFontFaceRule()
	case "keyframes":
		return p.parseKeyFramesRule()
	case "supports":
		return p.parseSupportsRule()
	default:
		return nil, p.unexpected("at-rule")
	}
}

func (p *Parser) parseSelectors() (selectors []*ast.Selector, err error) {
	for !p.Is(token.OpenCurly) {
		selector, err := p.parseSelector()
		if err != nil {
			return nil, err
		}
		selectors = append(selectors, selector)
		for p.Accept(token.Space) {
		}
		p.Accept(token.Comma)
		for p.Accept(token.Space) {
		}
	}
	return selectors, nil
}

func (p *Parser) parseSelector() (*ast.Selector, error) {
	selector := &ast.Selector{}
	for !p.Is(token.Comma, token.OpenCurly, token.CloseParen) {
		switch {
		case p.Accept(token.Identifier):
			selector.Components = append(selector.Components, &ast.ElementComponent{
				Name: p.Text(),
			})
		case p.Accept(token.Hash):
			if err := p.Expect(token.Identifier); err != nil {
				return nil, err
			}
			selector.Components = append(selector.Components, &ast.IdComponent{
				Name: p.Text(),
			})
		case p.Accept(token.Dot):
			if err := p.Expect(token.Identifier); err != nil {
				return nil, err
			}
			selector.Components = append(selector.Components, &ast.ClassComponent{
				Name: p.Text(),
			})
		case p.Accept(token.ColonColon):
			if err := p.Expect(token.Identifier); err != nil {
				return nil, err
			}
			name := p.Text()
			component := &ast.PseudoElementComponent{
				Name: name,
			}
			if p.Is(token.OpenParen) {
				args, err := p.parseArguments(name)
				if err != nil {
					return nil, err
				}
				component.Args = args
			}
			selector.Components = append(selector.Components, component)
		case p.Accept(token.Colon):
			if err := p.Expect(token.Identifier); err != nil {
				return nil, err
			}
			name := p.Text()
			component := &ast.PseudoClassComponent{
				Name: name,
			}
			if p.Is(token.OpenParen) {
				args, err := p.parseArguments(name)
				if err != nil {
					return nil, err
				}
				component.Args = args
			}
			selector.Components = append(selector.Components, component)
		case p.Accept(token.OpenBracket):
			attr, err := p.parseAttributeComponent()
			if err != nil {
				return nil, err
			}
			selector.Components = append(selector.Components, attr)
		case p.Accept(token.Star):
			selector.Components = append(selector.Components, &ast.UniversalComponent{})
		default:
			return nil, p.unexpected("selector")
		}

		hasSpace := false
		for p.Accept(token.Space) {
			hasSpace = true
		}

		if p.Is(token.Comma, token.OpenCurly) {
			return selector, nil
		}

		if p.Accept(token.Plus, token.GreaterThan, token.Tilde) {
			selector.Components = append(selector.Components, &ast.Separator{
				Value: p.Text(),
			})
			for p.Accept(token.Space) {
			}
		} else if hasSpace {
			selector.Components = append(selector.Components, &ast.Separator{
				Value: " ",
			})
		}
	}
	return selector, nil
}

func (p *Parser) parseAttributeComponent() (*ast.AttributeComponent, error) {
	for p.Accept(token.Space) {
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	name := p.Text()
	for p.Accept(token.Space) {
	}
	var op *ast.AttributeOperation
	if p.Accept(token.Equal, token.TildeEqual, token.PipeEqual, token.CaretEqual, token.DollarEqual, token.StarEqual) {
		operator := p.Text()
		for p.Accept(token.Space) {
		}
		if err := p.Expect(token.Identifier, token.String); err != nil {
			return nil, err
		}
		op = &ast.AttributeOperation{
			Operator: operator,
			Value:    p.Text(),
		}
	}
	for p.Accept(token.Space) {
	}
	if err := p.Expect(token.CloseBracket); err != nil {
		return nil, err
	}
	return &ast.AttributeComponent{
		Name:      name,
		Operation: op,
	}, nil
}

func (p *Parser) parseMediaRule() (*ast.MediaRule, error) {
	for p.Accept(token.Space) {
	}
	mediaQueries, err := p.parseMediaQueries()
	if err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	if err := p.Expect(token.OpenCurly); err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	var rules []ast.Rule
	for !p.Is(token.CloseCurly) {
		rule, err := p.parseRule()
		if err != nil {
			return nil, err
		}
		rules = append(rules, rule)
		for p.Accept(token.Space) {
		}
	}
	if err := p.Expect(token.CloseCurly); err != nil {
		return nil, err
	}
	return &ast.MediaRule{
		Queries: mediaQueries,
		Rules:   rules,
	}, nil
}

func (p *Parser) parseMediaQueries() (queries []*ast.MediaQuery, err error) {
	for {
		query, err := p.parseMediaQuery()
		if err != nil {
			return nil, err
		}
		queries = append(queries, query)
		for p.Accept(token.Space) {
		}
		if p.Is(token.OpenCurly) {
			return queries, nil
		}
		if err := p.Expect(token.Comma); err != nil {
			return nil, err
		}
		for p.Accept(token.Space) {
		}
	}
}

// https://drafts.csswg.org/mediaqueries/#media
func (p *Parser) parseMediaQuery() (*ast.MediaQuery, error) {
	if p.Accept(token.OpenParen) {
		condition, err := p.parseMediaCondition()
		if err != nil {
			return nil, err
		}
		if err := p.Expect(token.CloseParen); err != nil {
			return nil, err
		}
		return &ast.MediaQuery{
			Condition: condition,
		}, nil
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	qualifier := ""
	text := p.Text()
	if text == "only" || text == "not" {
		qualifier = text
		for p.Accept(token.Space) {
		}
		if err := p.Expect(token.Identifier); err != nil {
			return nil, err
		}
		text = p.Text()
	}
	mediaType := text
	for p.Accept(token.Space) {
	}
	next := p.l.Peak(1)
	if next.Type == token.Identifier && next.Text == "and" {
		p.l.Next()
		for p.Accept(token.Space) {
		}
		if err := p.Expect(token.OpenParen); err != nil {
			return nil, err
		}
		condition, err := p.parseMediaCondition()
		if err != nil {
			return nil, err
		}
		if err := p.Expect(token.CloseParen); err != nil {
			return nil, err
		}
		return &ast.MediaQuery{
			Qualifier: qualifier,
			MediaType: mediaType,
			Condition: condition,
		}, nil
	}

	return &ast.MediaQuery{
		Qualifier: qualifier,
		MediaType: mediaType,
	}, nil
}

func (p *Parser) parseMediaCondition() (ast.MediaCondition, error) {
	sb := new(strings.Builder)
	for !p.Is(token.CloseParen) {
		p.l.Next()
		sb.WriteString(p.Text())
	}
	return &ast.RawMediaCondition{
		Value: strings.TrimSpace(sb.String()),
	}, nil
}

func (p *Parser) parseImportRule() (*ast.ImportRule, error) {
	return nil, p.unexpected("import rule")
}

func (p *Parser) parseFontFaceRule() (*ast.FontFaceRule, error) {
	for p.Accept(token.Space) {
	}
	decls, err := p.parseDeclarations()
	if err != nil {
		return nil, err
	}
	return &ast.FontFaceRule{
		Declarations: decls,
	}, nil
}

func (p *Parser) parseKeyFramesRule() (*ast.KeyFramesRule, error) {
	for p.Accept(token.Space) {
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	name := p.Text()
	for p.Accept(token.Space) {
	}
	keyframes, err := p.parseKeyFrames()
	if err != nil {
		return nil, err
	}
	return &ast.KeyFramesRule{
		Name:      name,
		Keyframes: keyframes,
	}, nil
}

func (p *Parser) parseKeyFrames() (keyframes []*ast.Keyframe, err error) {
	if err := p.Expect(token.OpenCurly); err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	for !p.Is(token.CloseCurly) {
		keyframe, err := p.parseKeyFrame()
		if err != nil {
			return nil, err
		}
		keyframes = append(keyframes, keyframe)
		for p.Accept(token.Space) {
		}
	}
	if err := p.Expect(token.CloseCurly); err != nil {
		return nil, err
	}
	return keyframes, nil
}

func (p *Parser) parseKeyFrame() (*ast.Keyframe, error) {
	selectors, err := p.parseKeyFrameSelectors()
	if err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	decls, err := p.parseDeclarations()
	if err != nil {
		return nil, err
	}
	return &ast.Keyframe{
		Selectors:    selectors,
		Declarations: decls,
	}, nil
}

func (p *Parser) parseKeyFrameSelectors() (sels []ast.KeyframeSelector, err error) {
	for !p.Is(token.OpenCurly) {
		sel, err := p.parseKeyFrameSelector()
		if err != nil {
			return nil, err
		}
		sels = append(sels, sel)
		for p.Accept(token.Space) {
		}
		if p.Is(token.OpenCurly) {
			return sels, nil
		}
		if err := p.Expect(token.Comma); err != nil {
			return nil, err
		}
		for p.Accept(token.Space) {
		}
	}
	return sels, nil
}

func (p *Parser) parseKeyFrameSelector() (ast.KeyframeSelector, error) {
	switch {
	case p.Accept(token.Identifier):
		return &ast.Keyword{
			Name: p.Text(),
		}, nil
	case p.Accept(token.Number):
		value := p.Text()
		if err := p.Expect(token.Percent); err != nil {
			return nil, err
		}
		float, err := strconv.ParseFloat(value, 64)
		if err != nil {
			return nil, err
		}
		return &ast.Percent{
			Value: float,
		}, nil
	default:
		return nil, p.unexpected("keyframe selector")
	}
}

func (p *Parser) parseSupportsRule() (*ast.SupportsRule, error) {
	return nil, p.unexpected("supports rule")
}

func (p *Parser) parseDeclarations() (decls []*ast.Declaration, err error) {
	if err := p.Expect(token.OpenCurly); err != nil {
		return nil, err
	}
	// Ignore spaces
	for p.Accept(token.Space) {
	}
	for !p.Is(token.CloseCurly) {
		decl, err := p.parseDeclaration()
		if err != nil {
			return nil, err
		}
		decls = append(decls, decl)
		// Ignore spaces
		for p.Accept(token.Space) {
		}
	}
	if err := p.Expect(token.CloseCurly); err != nil {
		return nil, err
	}
	return decls, nil
}

func (p *Parser) parseDeclaration() (*ast.Declaration, error) {
	property := ""
	if p.Accept(token.DashDash) {
		property += p.Text()
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	property += p.Text()
	for p.Accept(token.Space) {
	}
	if err := p.Expect(token.Colon); err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	value, err := p.parseListValue()
	if err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	important := false
	if p.Accept(token.Exclamation) {
		if err := p.Expect(token.Identifier); err != nil {
			return nil, err
		}
		if p.Text() != "important" {
			return nil, fmt.Errorf("expected important, got %s", p.Text())
		}
		important = true
	}
	for p.Accept(token.Space) {
	}
	// Accept a semicolon if it's there
	p.Accept(token.Semicolon)
	return &ast.Declaration{
		Property:  property,
		Value:     value,
		Important: important,
	}, nil
}

func (p *Parser) parseListValue() (value ast.Value, err error) {
	var values []ast.Value
	for !p.Is(token.Semicolon, token.CloseCurly) {
		value, err := p.parseValue()
		if err != nil {
			return nil, err
		}
		values = append(values, value)
		hasSpace := false
		for p.Accept(token.Space) {
			hasSpace = true
		}
		if p.Is(token.Semicolon, token.CloseCurly) {
			break
		}
		if p.Accept(token.Space, token.Comma, token.Slash) {
			values = append(values, &ast.Separator{
				Value: p.Text(),
			})
			for p.Accept(token.Space) {
			}
		} else if hasSpace {
			values = append(values, &ast.Separator{
				Value: " ",
			})
		}
	}
	switch len(values) {
	case 0:
		return nil, fmt.Errorf("expected a value")
	case 1:
		return values[0], nil
	default:
		return &ast.ListValue{
			Values: values,
		}, nil
	}
}

func (p *Parser) parseValue() (ast.Value, error) {
	switch {
	case p.Accept(token.Identifier):
		name := p.Text()
		if p.Is(token.OpenParen) {
			values, err := p.parseFunctionValues()
			if err != nil {
				return nil, err
			}
			return &ast.FunctionValue{
				Name: name,
				Args: values,
			}, nil
		}
		return &ast.Keyword{
			Name: name,
		}, nil
	case p.Accept(token.Number):
		return p.parseNumberValue()
	case p.Accept(token.String):
		return &ast.StringValue{
			Value: p.Text(),
		}, nil
	default:
		p.l.Next()
		return p.parseRawValue()
	}
}

func (p *Parser) parseFunctionValues() (values []ast.Value, err error) {
	if err := p.Expect(token.OpenParen); err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	for !p.Is(token.CloseParen) {
		value, err := p.parseValue()
		if err != nil {
			return nil, err
		}
		values = append(values, value)
		for p.Accept(token.Space) {
		}
		p.Accept(token.Comma)
		for p.Accept(token.Space) {
		}
	}
	if err := p.Expect(token.CloseParen); err != nil {
		return nil, err
	}
	return values, nil
}

func (p *Parser) parseNumberValue() (ast.Value, error) {
	value, err := strconv.ParseFloat(p.Text(), 64)
	if err != nil {
		return nil, err
	}
	switch {
	case p.Accept(token.Identifier):
		return &ast.Length{
			Value: value,
			Unit:  p.Text(),
		}, nil
	case p.Accept(token.Percent):
		return &ast.Percent{
			Value: value,
		}, nil
	default:
		return &ast.Number{
			Value: value,
		}, nil
	}
}

func (p *Parser) parseRawValue() (ast.Value, error) {
	sb := strings.Builder{}
	sb.WriteString(p.Text())
	for !p.Is(token.Semicolon, token.Exclamation, token.CloseBracket, token.CloseParen, token.CloseCurly, token.Comma) {
		p.l.Next()
		sb.WriteString(p.Text())
	}
	return &ast.RawValue{
		Value: strings.TrimSpace(sb.String()),
	}, nil
}

func (p *Parser) parseArguments(name string) (args []ast.Argument, err error) {
	if err := p.Expect(token.OpenParen); err != nil {
		return nil, err
	}
	for p.Accept(token.Space) {
	}
	for !p.Is(token.CloseParen) {
		arg, err := p.parseArgument(name)
		if err != nil {
			return nil, err
		}
		args = append(args, arg)
		for p.Accept(token.Space) {
		}
		p.Accept(token.Comma)
		for p.Accept(token.Space) {
		}
	}
	if err := p.Expect(token.CloseParen); err != nil {
		return nil, err
	}
	return args, nil
}

func (p *Parser) parseArgument(_ string) (ast.Argument, error) {
	switch {
	case p.Is(token.Dot, token.Hash, token.OpenBracket, token.Star, token.Colon):
		return p.parseSelector()
	case p.Accept(token.Identifier):
		return &ast.Keyword{
			Name: p.Text(),
		}, nil
	case p.Accept(token.Nth):
		return p.parseAnPlusB()
	default:
		return nil, p.unexpected("argument")
	}
}

func (p *Parser) parseAnPlusB() (*ast.AnPlusB, error) {
	a, err := parseA(strings.TrimRight(p.Text(), "n"))
	if err != nil {
		return nil, err
	}
	node := &ast.AnPlusB{
		A: a,
	}
	if p.Accept(token.Plus) {
		if err := p.Expect(token.Number); err != nil {
			return nil, err
		}
		b, err := strconv.Atoi(p.Text())
		if err != nil {
			return nil, err
		}
		node.B = b
	}
	return node, nil
}

func parseA(a string) (int, error) {
	switch a {
	case "":
		return 1, nil
	case "-":
		return -1, nil
	default:
		return strconv.Atoi(a)
	}
}
