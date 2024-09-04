package parser

import (
	"errors"
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

// Parse a single component of a selector
func ParseSelectorComponent(path, input string) (ast.SelectorComponent, error) {
	l := lexer.New(input)
	p := New(path, l)
	return p.parseSelectorComponent()
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

func (p *Parser) Error() error {
	if p.l.Token.Error == "" {
		return nil
	}
	return errors.New(p.l.Token.Error)
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
		return fmt.Errorf("expected %s, got %s:%q (line:%d)", tokenList(tokens...), p.l.Peak(1).Type, p.l.Peak(1).Text, p.l.Peak(1).Line)
	}
	p.l.Next()
	return nil
}

func (p *Parser) unexpected(prefix string) error {
	return fmt.Errorf("parser: %s %w", prefix, p.l.Unexpected())
}

func (p *Parser) parseStylesheet() (*ast.Stylesheet, error) {
	var rules []ast.Rule
	for p.Accept(token.Space, token.Comment) {
	}
	for !p.Accept(token.EOF) {
		if p.Accept(token.Comment, token.Space) {
			continue
		}
		rule, err := p.parseRule()
		if err != nil {
			return nil, err
		}
		rules = append(rules, rule)
		for p.Accept(token.Space, token.Comment) {
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
	case "keyframes", "-webkit-keyframes", "-moz-keyframes", "-ms-keyframes", "-o-keyframes":
		return p.parseKeyFramesRule()
	case "supports":
		return p.parseSupportsRule()
	case "charset":
		return p.parseCharsetRule()
	default:
		return nil, p.unexpected("at-rule")
	}
}

func (p *Parser) parseSelectors() (selectors []*ast.Selector, err error) {
	for !p.Is(token.EOF, token.Error, token.OpenCurly) {
		selector, err := p.parseSelector()
		if err != nil {
			return nil, err
		}
		selectors = append(selectors, selector)
		for p.Accept(token.Space, token.Comment) {
		}
		p.Accept(token.Comma)
		for p.Accept(token.Space, token.Comment) {
		}
	}
	if p.Is(token.Error) {
		return nil, fmt.Errorf("selector error: %s", p.Error())
	} else if p.Is(token.EOF) {
		return nil, fmt.Errorf("unexpected eof")
	}
	return selectors, nil
}

func (p *Parser) parseSelector() (*ast.Selector, error) {
	selector := &ast.Selector{}
	for !p.Is(token.Comma, token.OpenCurly, token.CloseParen) {
		component, err := p.parseSelectorComponent()
		if err != nil {
			return nil, err
		}
		selector.Components = append(selector.Components, component)

		hasSpace := false
		for p.Accept(token.Space, token.Comment) {
			hasSpace = true
		}

		if p.Is(token.Comma, token.OpenCurly) {
			return selector, nil
		}

		if p.Accept(token.Plus, token.GreaterThan, token.Tilde) {
			selector.Components = append(selector.Components, &ast.CombinatorComponent{
				Value: p.Text(),
			})
			for p.Accept(token.Space, token.Comment) {
			}
		} else if hasSpace {
			selector.Components = append(selector.Components, &ast.CombinatorComponent{
				Value: " ",
			})
		}
	}
	return selector, nil
}

func (p *Parser) parseSelectorComponent() (ast.SelectorComponent, error) {
	switch {
	case p.Accept(token.Identifier):
		return &ast.ElementComponent{
			Name: p.Text(),
		}, nil
	case p.Accept(token.Hash):
		if err := p.Expect(token.Identifier); err != nil {
			return nil, err
		}
		return &ast.IdComponent{
			Name: p.Text(),
		}, nil
	case p.Accept(token.Dot):
		if err := p.Expect(token.Identifier); err != nil {
			return nil, err
		}
		return &ast.ClassComponent{
			Name: p.Text(),
		}, nil
	case p.Accept(token.ColonColon):
		name := ""
		if p.Accept(token.DashDash) {
			name += p.Text()
		} else if p.Accept(token.Dash) {
			name += p.Text()
		}
		if err := p.Expect(token.Identifier); err != nil {
			return nil, err
		}
		name += p.Text()
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
		return component, nil
	case p.Accept(token.Colon):
		name := ""
		if p.Accept(token.DashDash) {
			name += p.Text()
		} else if p.Accept(token.Dash) {
			name += p.Text()
		}
		if err := p.Expect(token.Identifier); err != nil {
			return nil, err
		}
		name += p.Text()
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
		return component, nil
	case p.Accept(token.OpenBracket):
		attr, err := p.parseAttributeComponent()
		if err != nil {
			return nil, err
		}
		return attr, nil
	case p.Accept(token.Star):
		return &ast.UniversalComponent{
			Name: p.Text(),
		}, nil
	default:
		return nil, p.unexpected("selector")
	}
}

func (p *Parser) parseAttributeComponent() (*ast.AttributeComponent, error) {
	node := &ast.AttributeComponent{}
	for p.Accept(token.Space, token.Comment) {
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	node.Name = p.Text()
	for p.Accept(token.Space, token.Comment) {
	}
	if p.Accept(token.Equal, token.TildeEqual, token.PipeEqual, token.CaretEqual, token.DollarEqual, token.StarEqual) {
		node.Operator = p.Text()
		for p.Accept(token.Space, token.Comment) {
		}
		value, err := p.parseValue()
		if err != nil {
			return nil, err
		}
		node.Value = value
	}
	for p.Accept(token.Space, token.Comment) {
	}
	if err := p.Expect(token.CloseBracket); err != nil {
		return nil, err
	}
	return node, nil
}

func (p *Parser) parseMediaRule() (*ast.MediaRule, error) {
	for p.Accept(token.Space, token.Comment) {
	}
	mediaCondition, err := p.parseMediaCondition()
	if err != nil {
		return nil, err
	}
	if err := p.Expect(token.OpenCurly); err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	var rules []ast.Rule
	for !p.Is(token.CloseCurly) {
		rule, err := p.parseRule()
		if err != nil {
			return nil, err
		}
		rules = append(rules, rule)
		for p.Accept(token.Space, token.Comment) {
		}
	}
	if err := p.Expect(token.CloseCurly); err != nil {
		return nil, err
	}
	return &ast.MediaRule{
		Condition: mediaCondition,
		Rules:     rules,
	}, nil
}

// https://drafts.csswg.org/mediaqueries/#media
func (p *Parser) parseMediaCondition() (*ast.MediaCondition, error) {
	condition := &ast.MediaCondition{}
	if p.Accept(token.Identifier) {
		text := p.Text()
		if text == "only" || text == "not" {
			condition.Operator = text
			for p.Accept(token.Space, token.Comment) {
			}
			right, err := p.parseMediaCondition()
			if err != nil {
				return nil, err
			}
			condition.Right = right
			return condition, nil
		}
		condition.Constraint = &ast.MediaType{
			Name: text,
		}
	} else if p.Accept(token.OpenParen) {
		feature, err := p.parseMediaFeature()
		if err != nil {
			return nil, err
		}
		condition.Constraint = feature
		if err := p.Expect(token.CloseParen); err != nil {
			return nil, err
		}
	}
	for p.Accept(token.Space, token.Comment) {
	}
	// Handle comma (or) condition
	if p.Accept(token.Comma) {
		condition.Operator = p.Text()
		for p.Accept(token.Space, token.Comment) {
		}
		right, err := p.parseMediaCondition()
		if err != nil {
			return nil, err
		}
		condition.Right = right
	}
	// Handle and/or conditions
	next := p.l.Peak(1)
	if next.Type == token.Identifier && next.Text == "and" || next.Text == "or" {
		p.l.Next()
		condition.Operator = p.Text()
		for p.Accept(token.Space, token.Comment) {
		}
		right, err := p.parseMediaCondition()
		if err != nil {
			return nil, err
		}
		condition.Right = right
	}
	for p.Accept(token.Space, token.Comment) {
	}
	return condition, nil
}

func (p *Parser) parseMediaFeature() (*ast.MediaFeature, error) {
	mediaFeature := &ast.MediaFeature{}
	// Handle before constraints
	if p.Is(token.Number) {
		beforeValue, err := p.parseValue()
		if err != nil {
			return nil, err
		}
		for p.Accept(token.Space, token.Comment) {
		}
		if err := p.Expect(token.LessThan, token.LessThanEqual); err != nil {
			return nil, err
		}
		beforeOperator := p.Text()
		for p.Accept(token.Space, token.Comment) {
		}
		mediaFeature.Before = &ast.MediaFeatureCondition{
			Value:    beforeValue,
			Operator: beforeOperator,
		}
	}
	name := ""
	if p.Accept(token.DashDash) {
		name += p.Text()
	} else if p.Accept(token.Dash) {
		name += p.Text()
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	name += p.Text()
	mediaFeature.Name = name
	for p.Accept(token.Space, token.Comment) {
	}
	if p.Accept(token.Colon, token.GreaterThan, token.LessThan, token.GreaterThanEqual, token.LessThanEqual) {
		operator := p.Text()
		for p.Accept(token.Space, token.Comment) {
		}
		value, err := p.parseValue()
		if err != nil {
			return nil, err
		}
		mediaFeature.After = &ast.MediaFeatureCondition{
			Operator: operator,
			Value:    value,
		}
	}
	return mediaFeature, nil
}

func (p *Parser) parseImportRule() (*ast.ImportRule, error) {
	for p.Accept(token.Space, token.Comment) {
	}
	sb := new(strings.Builder)
	if p.Accept(token.Identifier) && p.Text() == "url" {
		if err := p.Expect(token.OpenParen); err != nil {
			return nil, err
		}
		for !p.Is(token.CloseParen) {
			p.l.Next()
			sb.WriteString(p.Text())
		}
		if err := p.Expect(token.CloseParen); err != nil {
			return nil, err
		}
	} else if p.Accept(token.String) {
		sb.WriteString(p.Text())
	}
	for p.Accept(token.Space, token.Comment) {
	}
	rule := &ast.ImportRule{
		Url: strings.Trim(sb.String(), `'"`),
	}
	for p.Is(token.Identifier) {
		next := p.l.Peak(1)
		switch next.Text {
		case "layer":
			p.l.Next()
			layers := []string{}
			if p.Accept(token.OpenParen) {
				for p.Accept(token.Space, token.Comment) {
				}
				if p.Accept(token.Identifier) {
					layers = append(layers, p.Text())
					for p.Accept(token.Space, token.Comment) {
					}
				}
				if err := p.Expect(token.CloseParen); err != nil {
					return nil, err
				}
			}
			rule.Layers = layers
		case "supports":
			p.l.Next()
			if err := p.Expect(token.OpenParen); err != nil {
				return nil, err
			}
			supports, err := p.parseImportSupports()
			if err != nil {
				return nil, err
			}
			if err := p.Expect(token.CloseParen); err != nil {
				return nil, err
			}
			for p.Accept(token.Space, token.Comment) {
			}
			rule.Supports = supports
		default:
			media, err := p.parseMediaCondition()
			if err != nil {
				return nil, err
			}
			rule.Media = media
		}
	}
	p.Accept(token.Semicolon)
	return rule, nil
}

func (p *Parser) parseImportSupports() (*ast.SupportsCondition, error) {
	next := p.l.Peak(1)
	if next.Type != token.Identifier || next.Text == "not" {
		return p.parseSupportsCondition()
	}
	prop, err := p.parseSupportsProperty()
	if err != nil {
		return nil, err
	}
	return &ast.SupportsCondition{
		Field: prop,
	}, nil
}

func (p *Parser) parseFontFaceRule() (*ast.FontFaceRule, error) {
	for p.Accept(token.Space, token.Comment) {
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
	for p.Accept(token.Space, token.Comment) {
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	name := p.Text()
	for p.Accept(token.Space, token.Comment) {
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

func (p *Parser) parseKeyFrames() (keyframes []*ast.KeyFrame, err error) {
	if err := p.Expect(token.OpenCurly); err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	for !p.Is(token.CloseCurly) {
		keyframe, err := p.parseKeyFrame()
		if err != nil {
			return nil, err
		}
		keyframes = append(keyframes, keyframe)
		for p.Accept(token.Space, token.Comment) {
		}
	}
	if err := p.Expect(token.CloseCurly); err != nil {
		return nil, err
	}
	return keyframes, nil
}

func (p *Parser) parseKeyFrame() (*ast.KeyFrame, error) {
	selectors, err := p.parseKeyFrameSelectors()
	if err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	decls, err := p.parseDeclarations()
	if err != nil {
		return nil, err
	}
	return &ast.KeyFrame{
		Selectors:    selectors,
		Declarations: decls,
	}, nil
}

func (p *Parser) parseKeyFrameSelectors() (sels []ast.KeyFrameSelector, err error) {
	for !p.Is(token.OpenCurly) {
		sel, err := p.parseKeyFrameSelector()
		if err != nil {
			return nil, err
		}
		sels = append(sels, sel)
		for p.Accept(token.Space, token.Comment) {
		}
		if p.Is(token.OpenCurly) {
			return sels, nil
		}
		if err := p.Expect(token.Comma); err != nil {
			return nil, err
		}
		for p.Accept(token.Space, token.Comment) {
		}
	}
	return sels, nil
}

func (p *Parser) parseKeyFrameSelector() (ast.KeyFrameSelector, error) {
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
	for p.Accept(token.Space, token.Comment) {
	}
	condition, err := p.parseSupportsCondition()
	if err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	if err := p.Expect(token.OpenCurly); err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	var rules []ast.Rule
	for !p.Is(token.CloseCurly) {
		rule, err := p.parseRule()
		if err != nil {
			return nil, err
		}
		rules = append(rules, rule)
		for p.Accept(token.Space, token.Comment) {
		}
	}
	if err := p.Expect(token.CloseCurly); err != nil {
		return nil, err
	}
	return &ast.SupportsRule{
		Condition: condition,
		Rules:     rules,
	}, nil
}

func (p *Parser) parseSupportsCondition() (*ast.SupportsCondition, error) {
	condition := &ast.SupportsCondition{}

	// Handle not
	next := p.l.Peak(1)
	if next.Type == token.Identifier && next.Text == "not" {
		p.l.Next()
		condition.Operator = "not"
		for p.Accept(token.Space, token.Comment) {
		}
	}
	field, err := p.parseSupportsField()
	if err != nil {
		return nil, err
	}
	condition.Field = field

	// Handle and/or conditions
	for !p.Is(token.EOF, token.Error) {
		for p.Accept(token.Space, token.Comment) {
		}
		next = p.l.Peak(1)
		if next.Type != token.Identifier || (next.Text != "and" && next.Text != "or") {
			break
		}
		p.l.Next()
		child := &ast.SupportsCondition{
			Operator: p.Text(),
		}
		for p.Accept(token.Space, token.Comment) {
		}
		field, err := p.parseSupportsField()
		if err != nil {
			return nil, err
		}
		child.Field = field
		condition.Children = append(condition.Children, child)
	}
	if p.Is(token.Error) {
		return nil, fmt.Errorf("supports rule error: %s", p.Error())
	} else if p.Is(token.EOF) {
		return nil, fmt.Errorf("unexpected EOF")
	}
	return condition, nil
}

func (p *Parser) parseSupportsField() (ast.SupportsField, error) {
	switch {
	case p.Is(token.Identifier):
		return p.parseSupportFunction()
	case p.Is(token.OpenParen):
		if err := p.Expect(token.OpenParen); err != nil {
			return nil, err
		}
		for p.Accept(token.Space, token.Comment) {
		}
		prop, err := p.parseSupportsProperty()
		if err != nil {
			return nil, err
		}
		for p.Accept(token.Space, token.Comment) {
		}
		if err := p.Expect(token.CloseParen); err != nil {
			return nil, err
		}
		return prop, nil
	default:
		return nil, p.unexpected("support constraint")
	}
}

func (p *Parser) parseSupportsProperty() (*ast.SupportsProperty, error) {
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	name := p.Text()
	for p.Accept(token.Space, token.Comment) {
	}
	if err := p.Expect(token.Colon); err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	value, err := p.parseParenValue()
	if err != nil {
		return nil, err
	}
	return &ast.SupportsProperty{
		Name:  name,
		Value: value,
	}, nil
}

func (p *Parser) parseSupportFunction() (*ast.SupportsFunction, error) {
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	node := &ast.SupportsFunction{
		Name: p.Text(),
	}
	if node.Name == "selector" {
		if err := p.Expect(token.OpenParen); err != nil {
			return nil, err
		}
		sel, err := p.parseSelector()
		if err != nil {
			return nil, err
		}
		node.Args = append(node.Args, sel)
		if err := p.Expect(token.CloseParen); err != nil {
			return nil, err
		}
		return node, nil
	}
	args, err := p.parseArguments(node.Name)
	if err != nil {
		return nil, err
	}
	node.Args = append(node.Args, args...)
	return node, nil
}

func (p *Parser) parseCharsetRule() (*ast.CharsetRule, error) {
	for p.Accept(token.Space, token.Comment) {
	}
	if err := p.Expect(token.String); err != nil {
		return nil, err
	}
	charset, err := strconv.Unquote(p.Text())
	if err != nil {
		return nil, err
	}
	if err := p.Expect(token.Semicolon); err != nil {
		return nil, err
	}
	return &ast.CharsetRule{
		Charset: charset,
	}, nil
}

func (p *Parser) parseDeclarations() (decls []*ast.Declaration, err error) {
	if err := p.Expect(token.OpenCurly); err != nil {
		return nil, err
	}
	// Ignore spaces
	for p.Accept(token.Space, token.Comment) {
	}
	for !p.Is(token.CloseCurly) {
		decl, err := p.parseDeclaration()
		if err != nil {
			return nil, err
		}
		decls = append(decls, decl)
		// Ignore spaces
		for p.Accept(token.Space, token.Comment) {
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
	} else if p.Accept(token.Dash) {
		property += p.Text()
	} else if p.Accept(token.Star) {
		property += p.Text()
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	property += p.Text()
	for p.Accept(token.Space, token.Comment) {
	}
	if err := p.Expect(token.Colon); err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	value, err := p.parseDeclarationValue()
	if err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
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
	for p.Accept(token.Space, token.Comment) {
	}
	// Accept a semicolon if it's there
	p.Accept(token.Semicolon)
	return &ast.Declaration{
		Property:  property,
		Value:     value,
		Important: important,
	}, nil
}

func (p *Parser) parseDeclarationValue() (value ast.Value, err error) {
	return p.parseValueList(token.Semicolon, token.CloseCurly, token.Exclamation)
}

func (p *Parser) parseParenValue() (value ast.Value, err error) {
	return p.parseValueList(token.CloseParen)
}

func (p *Parser) parseValueList(parseUntil ...token.Type) (value ast.Value, err error) {
	var values []ast.Value
	for !p.Is(parseUntil...) {
		value, err := p.parseValue()
		if err != nil {
			return nil, err
		}
		values = append(values, value)
		hasSpace := false
		for p.Accept(token.Space, token.Comment) {
			hasSpace = true
		}
		if p.Is(parseUntil...) {
			break
		}
		if p.Accept(token.Comma, token.Slash) {
			values = append(values, &ast.CombinatorComponent{
				Value: p.Text(),
			})
			for p.Accept(token.Space, token.Comment) {
			}
		} else if hasSpace {
			values = append(values, &ast.CombinatorComponent{
				Value: " ",
			})
		}
	}
	switch len(values) {
	case 0:
		return nil, nil
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
	for p.Accept(token.Space, token.Comment) {
	}
	for !p.Is(token.CloseParen) {
		value, err := p.parseParenValue()
		if err != nil {
			return nil, err
		}
		values = append(values, value)
		for p.Accept(token.Space, token.Comment) {
		}
		p.Accept(token.Comma)
		for p.Accept(token.Space, token.Comment) {
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
	case p.Accept(token.Slash):
		if err := p.Expect(token.Number); err != nil {
			return nil, err
		}
		denominator, err := strconv.ParseFloat(p.Text(), 64)
		if err != nil {
			return nil, err
		}
		return &ast.Ratio{
			Numerator:   value,
			Denominator: denominator,
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
	for !p.Is(token.EOF, token.Error, token.Semicolon, token.Exclamation, token.CloseBracket, token.CloseParen, token.CloseCurly, token.Comma) {
		p.l.Next()
		sb.WriteString(p.Text())
	}
	if p.Is(token.Error) {
		return nil, fmt.Errorf("raw value error: %s", p.Error())
	} else if p.Is(token.EOF) {
		return nil, fmt.Errorf("unexpected eof")
	}
	return &ast.RawValue{
		Value: strings.TrimSpace(sb.String()),
	}, nil
}

func (p *Parser) parseArguments(name string) (args []ast.Argument, err error) {
	if err := p.Expect(token.OpenParen); err != nil {
		return nil, err
	}
	for p.Accept(token.Space, token.Comment) {
	}
	for !p.Is(token.EOF, token.Error, token.CloseParen) {
		arg, err := p.parseArgument(name)
		if err != nil {
			return nil, err
		}
		args = append(args, arg)
		for p.Accept(token.Space, token.Comment) {
		}
		p.Accept(token.Comma)
		for p.Accept(token.Space, token.Comment) {
		}
	}
	if p.Is(token.Error) {
		return nil, fmt.Errorf("argument value error: %s", p.Error())
	} else if p.Is(token.EOF) {
		return nil, fmt.Errorf("unexpected eof")
	}
	if err := p.Expect(token.CloseParen); err != nil {
		return nil, err
	}
	return args, nil
}

func (p *Parser) parseArgument(name string) (ast.Argument, error) {
	// Handle nth arguments
	switch name {
	case "nth-child", "nth-last-child", "nth-of-type", "nth-last-of-type":
		return p.parseNthArgument()
	}
	switch {
	case p.Is(token.Dot, token.Hash, token.OpenBracket, token.Star, token.Colon):
		return p.parseSelector()
	case p.Accept(token.Identifier):
		return &ast.Keyword{
			Name: p.Text(),
		}, nil
	default:
		return nil, p.unexpected("argument")
	}
}

func (p *Parser) parseNthArgument() (ast.Argument, error) {
	negate := 1
	if p.Accept(token.Dash) {
		negate = -1
	}
	if p.Accept(token.Number) {
		a, err := strconv.Atoi(p.Text())
		if err != nil {
			return nil, err
		}
		a = negate * a
		if p.Accept(token.Identifier) && p.Text() == "n" {
			return p.parseAnPlusB(a)
		}
		return &ast.Number{
			Value: float64(a),
		}, nil
	}
	if err := p.Expect(token.Identifier); err != nil {
		return nil, err
	}
	text := p.Text()
	switch text {
	case "odd", "even":
		return &ast.Keyword{
			Name: text,
		}, nil
	case "n":
		return p.parseAnPlusB(negate * 1)
	}
	return nil, p.unexpected("nth")
}

func (p *Parser) parseAnPlusB(a int) (*ast.AnPlusB, error) {
	node := &ast.AnPlusB{
		A: a,
	}
	for p.Accept(token.Space, token.Comment) {
	}
	if p.Accept(token.Plus) {
		for p.Accept(token.Space, token.Comment) {
		}
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
