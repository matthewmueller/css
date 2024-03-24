package token

import (
	"strconv"
	"strings"
)

type Type string

type Token struct {
	Type  Type
	Text  string
	Error string // Error message for an error token
	Start int
	Line  int
}

func (t *Token) String() string {
	s := new(strings.Builder)
	s.WriteString(string(t.Type))
	if t.Error != "" {
		s.WriteString(":")
		s.WriteString(strconv.Quote(t.Error))
		return s.String()
	}
	if t.Text != "" && t.Text != string(t.Type) {
		s.WriteString(":")
		s.WriteString(strconv.Quote(t.Text))
	}
	return s.String()
}

const (
	EOF          Type = "eof"
	Error        Type = "error"
	Space        Type = "space"
	Identifier   Type = "ident"
	Number       Type = "number"
	Percent      Type = "percent"
	Hex          Type = "hex"
	ColonColon   Type = "::"
	Colon        Type = ":"
	Semicolon    Type = ";"
	Dot          Type = "."
	Hash         Type = "#"
	Comma        Type = ","
	Dash         Type = "-"
	DashDash     Type = "--"
	OpenCurly    Type = "{"
	CloseCurly   Type = "}"
	OpenBracket  Type = "["
	CloseBracket Type = "]"
	OpenParen    Type = "("
	CloseParen   Type = ")"
	Equal        Type = "="
	Plus         Type = "+"
	GreaterThan  Type = ">"
	Exclamation  Type = "!"
	At           Type = "@"
	Star         Type = "*"
	Tilde        Type = "~"
	CaretEqual   Type = "^="
	DollarEqual  Type = "$="
	StarEqual    Type = "*="
	TildeEqual   Type = "~="
	PipeEqual    Type = "|="
	String       Type = "string"  // "string" or 'string'
	Comment      Type = "comment" // /* comment */ or // comment
)
