package lexer

import (
	"fmt"
	"strings"
	"unicode/utf8"

	"github.com/matthewmueller/css/internal/token"
)

type state = func(l *Lexer) token.Type

func New(input string) *Lexer {
	l := &Lexer{
		input:  input,
		states: []state{initialState},
		line:   1,
	}
	l.step()
	return l
}

func Lex(input string) []token.Token {
	l := New(input)
	var tokens []token.Token
	for l.Next() {
		tokens = append(tokens, l.Token)
	}
	return tokens
}

// Print the input as tokens
func Print(input string) string {
	tokens := Lex(input)
	stoken := make([]string, len(tokens))
	for i, token := range tokens {
		stoken[i] = token.String()
	}
	return strings.Join(stoken, " ")
}

type Lexer struct {
	Token token.Token // Current token
	input string      // Input string
	start int         // Index to the start of the current token
	end   int         // Index to the end of the current token
	cp    rune        // Code point being considered
	next  int         // Index to the next rune to be considered
	line  int         // Line number
	err   string      // Error message for an error token
	prev  rune        // Previous rune

	states []state // Stack of states
	peaked []token.Token
}

func (l *Lexer) nextToken() token.Token {
	l.start = l.end
	tokenType := l.states[len(l.states)-1](l)
	t := token.Token{
		Type:  tokenType,
		Start: l.start,
		Text:  l.input[l.start:l.end],
		Line:  l.line,
	}
	if tokenType == token.Error {
		t.Error = l.err
		l.err = ""
	}
	return t
}

func (l *Lexer) Next() bool {
	if len(l.peaked) > 0 {
		l.Token = l.peaked[0]
		l.peaked = l.peaked[1:]
	} else {
		l.Token = l.nextToken()
	}
	return l.Token.Type != token.EOF
}

func (l *Lexer) Peak(nth int) token.Token {
	if len(l.peaked) >= nth {
		return l.peaked[nth-1]
	}
	for i := len(l.peaked); i < nth; i++ {
		l.peaked = append(l.peaked, l.nextToken())
	}
	return l.peaked[nth-1]
}

// Use -1 to indicate the end of the file
const eof = -1

// Step advances the lexer to the next token
func (l *Lexer) step() {
	codePoint, width := utf8.DecodeRuneInString(l.input[l.next:])
	if width == 0 {
		codePoint = eof
	}
	l.prev = l.cp
	l.cp = codePoint
	l.end = l.next
	l.next += width
	if l.cp == '\n' {
		l.line++
	}
}

func (l *Lexer) pushState(state state) {
	l.states = append(l.states, state)
}

func (l *Lexer) popState() {
	l.states = l.states[:len(l.states)-1]
}

func (l *Lexer) errorf(msg string, args ...interface{}) token.Type {
	l.err = fmt.Sprintf(msg, args...)
	return token.Error
}

func (l *Lexer) unexpected() token.Type {
	consumed := l.input[l.start:l.end]
	if l.cp == eof && len(consumed) == 0 {
		return l.errorf("unexpected end of input")
	}
	return l.errorf("unexpected tokens '%s'", consumed)
}

func initialState(l *Lexer) (t token.Type) {
	switch {
	case l.cp == eof:
		return token.EOF
	case isSpace(l.cp):
		l.step()
		for isSpace(l.cp) {
			l.step()
		}
		return token.Space
	case l.cp == '#':
		l.step()
		return token.Hash
	case isAlpha(l.cp):
		l.step()
		for isAlpha(l.cp) || isNumeric(l.cp) || isDash(l.cp) {
			l.step()
		}
		return token.Identifier
	case l.cp == '@':
		l.step()
		return token.At
	case l.cp == '{':
		l.step()
		l.pushState(blockState)
		return token.OpenCurly
	case l.cp == '(':
		l.step()
		l.pushState(parenState)
		return token.OpenParen
	case l.cp == '.':
		l.step()
		return token.Dot
	case l.cp == ':':
		l.step()
		if l.cp == ':' {
			l.step()
			return token.ColonColon
		}
		return token.Colon
	case l.cp == ',':
		l.step()
		return token.Comma
	case l.cp == '*':
		l.step()
		return token.Star
	case l.cp == '[':
		l.step()
		l.pushState(bracketState)
		return token.OpenBracket
	case l.cp == '>':
		l.step()
		return token.GreaterThan
	case l.cp == '+':
		l.step()
		return token.Plus
	case l.cp == '~':
		l.step()
		return token.Tilde
	default:
		l.step()
		for l.cp != '{' && l.cp != eof {
			l.step()
		}
		return l.unexpected()
	}
}

func blockState(l *Lexer) token.Type {
	switch {
	case l.cp == eof:
		return l.unexpected()
	case l.cp == '}':
		l.step()
		l.popState()
		return token.CloseCurly
	case isSpace(l.cp):
		l.step()
		for isSpace(l.cp) {
			l.step()
		}
		return token.Space
	case isAlpha(l.cp):
		l.step()
		for isAlpha(l.cp) || isNumeric(l.cp) || isDash(l.cp) {
			l.step()
		}
		return token.Identifier
	case l.cp == '*':
		l.step()
		return token.Star
	case l.cp == ':':
		l.step()
		return token.Colon
	case l.cp == ';':
		l.step()
		return token.Semicolon
	case l.cp == '#':
		l.step()
		return hexState(l)
	case isNumeric(l.cp):
		l.step()
		for isNumeric(l.cp) || l.cp == '.' {
			l.step()
		}
		return token.Number
	case l.cp == '.':
		l.step()
		return token.Dot
	case l.cp == '{':
		l.step()
		l.pushState(blockState)
		return token.OpenCurly
	case l.cp == '%':
		l.step()
		return token.Percent
	case l.cp == '-':
		l.step()
		if l.cp == '-' {
			l.step()
			return token.DashDash
		}
		return token.Dash
	case l.cp == '%':
		l.step()
		return token.Percent
	case l.cp == ',':
		l.step()
		return token.Comma
	case l.cp == '"':
		l.step()
		return stringState(l, '"')
	case l.cp == '\'':
		l.step()
		return stringState(l, '\'')
	case l.cp == '(':
		l.step()
		l.pushState(parenState)
		return token.OpenParen
	default:
		l.step()
		for l.cp != '}' && l.cp != eof {
			l.step()
		}
		l.popState()
		return l.unexpected()
	}
}

func parenState(l *Lexer) token.Type {
	switch {
	case l.cp == eof:
		return l.unexpected()
	case l.cp == ')':
		l.step()
		l.popState()
		return token.CloseParen
	case isSpace(l.cp):
		l.step()
		for isSpace(l.cp) {
			l.step()
		}
		return token.Space
	case isAlpha(l.cp):
		l.step()
		for isAlpha(l.cp) || isNumeric(l.cp) || isDash(l.cp) {
			l.step()
		}
		return token.Identifier
	case l.cp == ':':
		l.step()
		return token.Colon
	case l.cp == '.':
		l.step()
		return token.Dot
	case l.cp == '"':
		l.step()
		return stringState(l, '"')
	case l.cp == '\'':
		l.step()
		return stringState(l, '\'')
	case l.cp == ',':
		l.step()
		return token.Comma
	case l.cp == '#':
		l.step()
		return hexState(l)
	case isNumeric(l.cp):
		l.step()
		for isNumeric(l.cp) || l.cp == '.' {
			l.step()
		}
		return token.Number
	case l.cp == '%':
		l.step()
		return token.Percent
	case l.cp == '-':
		l.step()
		if l.cp == '-' {
			l.step()
			return token.DashDash
		}
		return token.Dash
	case l.cp == '+':
		l.step()
		return token.Plus
	default:
		l.step()
		for l.cp != ')' && l.cp != eof {
			l.step()
		}
		l.popState()
		return l.unexpected()
	}
}

func bracketState(l *Lexer) token.Type {
	switch {
	case l.cp == eof:
		return l.unexpected()
	case l.cp == ']':
		l.step()
		l.popState()
		return token.CloseBracket
	case isSpace(l.cp):
		l.step()
		for isSpace(l.cp) {
			l.step()
		}
		return token.Space
	case isAlpha(l.cp):
		l.step()
		for isAlpha(l.cp) || isNumeric(l.cp) || isDash(l.cp) {
			l.step()
		}
		return token.Identifier
	case l.cp == '^':
		l.step()
		if l.cp == '=' {
			return token.CaretEqual
		}
		return l.unexpected()
	case l.cp == '=':
		l.step()
		return token.Equal
	case isNumeric(l.cp):
		l.step()
		for isNumeric(l.cp) || l.cp == '.' {
			l.step()
		}
		return token.Number
	case l.cp == '%':
		l.step()
		return token.Percent
	case l.cp == '-':
		l.step()
		if l.cp == '-' {
			l.step()
			return token.DashDash
		}
		return token.Dash
	case l.cp == '"':
		l.step()
		return stringState(l, '"')
	case l.cp == '\'':
		l.step()
		return stringState(l, '\'')
	default:
		l.step()
		for l.cp != ']' && l.cp != eof {
			l.step()
		}
		l.popState()
		return l.unexpected()
	}
}

// func functionState(l *Lexer) token.Type {
// 	switch {
// 	case l.cp == eof:
// 		return l.unexpected()
// 	case l.cp == ')':
// 		l.step()
// 		l.popState()
// 		return token.CloseParen
// 	case isSpace(l.cp):
// 		l.step()
// 		for isSpace(l.cp) {
// 			l.step()
// 		}
// 		return token.Space
// 	case isLowerAlpha(l.cp):
// 		l.step()
// 		for isLowerAlpha(l.cp) || isNumeric(l.cp) || isDash(l.cp) {
// 			l.step()
// 		}
// 		return token.Identifier
// 	case l.cp == ',':
// 		l.step()
// 		return token.Comma
// 	case isNumeric(l.cp):
// 		l.step()
// 		for isNumeric(l.cp) || l.cp == '.' {
// 			l.step()
// 		}
// 		return token.Number
// 	case l.cp == '%':
// 		l.step()
// 		return token.Percent
// 	case l.cp == '-':
// 		l.step()
// 		return token.Dash
// 	case l.cp == '+':
// 		l.step()
// 		return token.Plus
// 	case l.cp == '"':
// 		l.step()
// 		return stringState(l, '"')
// 	case l.cp == '\'':
// 		l.step()
// 		return stringState(l, '\'')
// 	default:
// 		l.step()
// 		for l.cp != ')' && l.cp != eof {
// 			l.step()
// 		}
// 		l.popState()
// 		return l.unexpected()
// 	}
// }

func stringState(l *Lexer, end rune) (t token.Type) {
	for {
		switch {
		case l.cp == eof:
			l.popState()
			return l.unexpected()
		case l.cp == end:
			l.step()
			return token.String
		case l.cp == '\\':
			l.step()
			if l.cp == end {
				l.step()
			}
		case l.cp == '\n':
			return l.errorf("unexpected newline in string")
		default:
			l.step()
		}
	}
}

func hexState(l *Lexer) token.Type {
	// Minimum of 3 hex digits
	for i := 0; i < 3; i++ {
		if !isHex(l.cp) {
			return l.unexpected()
		}
		l.step()
	}
	if !isHex(l.cp) {
		return token.Hex
	}
	l.step()
	// Also supports 6 hex digits
	for i := 0; i < 2; i++ {
		if !isHex(l.cp) {
			return l.unexpected()
		}
		l.step()
	}
	if !isHex(l.cp) {
		return token.Hex
	}
	l.step()
	// Lastly, supports 8 hex digits
	if isHex(l.cp) {
		l.step()
	}
	return token.Hex
}

func isAlpha(cp rune) bool {
	return (cp >= 'a' && cp <= 'z') || (cp >= 'A' && cp <= 'Z')
}

func isHex(cp rune) bool {
	return isNumeric(cp) || (cp >= 'a' && cp <= 'f') || (cp >= 'A' && cp <= 'F')
}

func isNumeric(cp rune) bool {
	return cp >= '0' && cp <= '9'
}

func isDash(cp rune) bool {
	return cp == '-'
}

func isSpace(cp rune) bool {
	return cp == ' ' || cp == '\t' || cp == '\n' || cp == '\r'
}
