package parser

import (
	"fmt"

	"github.com/matthewmueller/css/ast"
	"github.com/matthewmueller/css/internal/lexer"
	"github.com/matthewmueller/css/internal/token"
)

func Parse(path, input string) (*ast.Stylesheet, error) {
	l := lexer.New(input)
	p := New(path, l)
	return p.Parse()
}

func Print(path, input string) string {
	doc, err := Parse(path, input)
	if err != nil {
		return err.Error()
	}
	return doc.String()
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

// Returns true if all the given tokens are next
func (p *Parser) Accept(tokens ...token.Type) bool {
	if !p.Check(tokens...) {
		return false
	}
	for i := 0; i < len(tokens); i++ {
		p.l.Next()
	}
	return true
}

func (p *Parser) Expect(tokens ...token.Type) error {
	for i, tok := range tokens {
		peaked := p.l.Peak(i + 1)
		if peaked.Type == token.Error {
			return fmt.Errorf(peaked.Text)
		} else if peaked.Type != tok {
			return fmt.Errorf("expected %s, got %s", tok, peaked.Type)
		}
	}
	for i := 0; i < len(tokens); i++ {
		p.l.Next()
	}
	return nil
}

func (p *Parser) unexpected(prefix string) error {
	return fmt.Errorf("parser: %s %w", prefix, p.l.Unexpected())
}

func (p *Parser) parseStylesheet() (*ast.Stylesheet, error) {
	var rules []ast.Rule
	for !p.Accept(token.EOF) {
		rule, err := p.parseRule()
		if err != nil {
			return nil, err
		}
		rules = append(rules, rule)
	}
	return &ast.Stylesheet{
		Rules: rules,
	}, nil
}

func (p *Parser) parseRule() (ast.Rule, error) {
	switch {
	// case p.Accept(token.Text), p.Accept(token.Space):
	// 	return p.parseText()
	// case p.Accept(token.LessThan):
	// 	return p.parseElement()
	// case p.Accept(token.Expr):
	// 	return &ast.Expr{
	// 		Value: trimExpr(p.Text()),
	// 	}, nil
	default:
		return nil, p.unexpected("rule")
	}
}
