// Package ast contains the AST generated by the parser.
package ast

import (
	"strconv"
	"strings"
)

type Visitor interface {
	VisitStylesheet(*Stylesheet)
}

type Node interface {
	String() string
	Visit(Visitor)
}

var (
	_ Node = &Stylesheet{}
	_ Node = &Comment{}
)

type Stylesheet struct {
	Rules []Rule
}

func (s *Stylesheet) String() string {
	sb := new(strings.Builder)
	for i, r := range s.Rules {
		if i > 0 {
			sb.WriteString("\n")
		}
		sb.WriteString(r.String())
	}
	return sb.String()
}

func (s *Stylesheet) Visit(v Visitor) {
	v.VisitStylesheet(s)
}

type Comment struct {
	Value string
}

func (s *Comment) String() string {
	return "/*" + s.Value + "*/"
}

func (s *Comment) Visit(v Visitor) {
	// v.VisitComment(s)
}

type Rule interface {
	Node
	rule()
}

var (
	_ Rule = (*StyleRule)(nil)
	_ Rule = (*MediaRule)(nil)
	_ Rule = (*ImportRule)(nil)
	_ Rule = (*KeyFramesRule)(nil)
	_ Rule = (*FontFaceRule)(nil)
	_ Rule = (*SupportsRule)(nil)
)

type StyleRule struct {
	Selectors    []*Selector
	Declarations []*Declaration
}

func (*StyleRule) rule() {}

func (s *StyleRule) String() string {
	sb := new(strings.Builder)
	for i, sel := range s.Selectors {
		if i > 0 {
			sb.WriteString(", ")
		}
		sb.WriteString(sel.String())
	}
	sb.WriteString(" { ")
	for i, decl := range s.Declarations {
		if i > 0 {
			sb.WriteString("; ")
		}
		sb.WriteString(decl.String())
	}
	sb.WriteString(" }")
	return sb.String()
}

func (s *StyleRule) Visit(v Visitor) {
	// v.VisitStyleRule(s)
}

type MediaRule struct {
	// Qualifier string // only or not
	// MediaType string
	Condition *MediaCondition
	Rules     []Rule
}

func (*MediaRule) rule() {}

func (s *MediaRule) String() string {
	sb := new(strings.Builder)
	sb.WriteString("@media ")
	sb.WriteString(s.Condition.String())
	sb.WriteString(" {")
	if len(s.Rules) > 0 {
		sb.WriteString("\n")
		for _, r := range s.Rules {
			sb.WriteString("  ")
			sb.WriteString(r.String())
			sb.WriteString("\n")
		}
	}
	sb.WriteString("}")
	return sb.String()
}

func (s *MediaRule) Visit(v Visitor) {
	// v.VisitMediaRule(s)
}

type ImportRule struct {
	Url      string
	Layers   []string
	Media    *MediaCondition
	Supports *SupportsCondition
}

func (*ImportRule) rule() {}

func (s *ImportRule) String() string {
	sb := new(strings.Builder)
	sb.WriteString("@import ")
	if s.Url != "" {
		sb.WriteString("url(")
		sb.WriteString(strconv.Quote(s.Url))
		sb.WriteString(")")
	}
	if s.Supports != nil {
		sb.WriteString(" supports(")
		sb.WriteString(s.Supports.String())
		sb.WriteString(")")
	}
	if s.Media != nil {
		sb.WriteString(" ")
		sb.WriteString(s.Media.String())
	}
	if s.Layers != nil {
		sb.WriteString(" layer(")
		for _, l := range s.Layers {
			sb.WriteString(l)
		}
		sb.WriteString(")")
	}
	sb.WriteString(";")
	return sb.String()
}

func (s *ImportRule) Visit(v Visitor) {
	// v.VisitImportRule(s)
}

type KeyFramesRule struct {
	Name      string
	Keyframes []*Keyframe
}

func (*KeyFramesRule) rule() {}

func (s *KeyFramesRule) String() string {
	sb := new(strings.Builder)
	sb.WriteString("@keyframes ")
	sb.WriteString(s.Name)
	sb.WriteString(" { ")
	for i, kf := range s.Keyframes {
		if i > 0 {
			sb.WriteString(" ")
		}
		sb.WriteString(kf.String())
	}
	sb.WriteString(" }")
	return sb.String()
}

func (s *KeyFramesRule) Visit(v Visitor) {
	// v.VisitKeyFramesRule(s)
}

type Keyframe struct {
	Selectors    []KeyframeSelector
	Declarations []*Declaration
}

var _ = (*Keyframe)(nil)

func (s *Keyframe) String() string {
	sb := new(strings.Builder)
	for i, sel := range s.Selectors {
		if i > 0 {
			sb.WriteString(", ")
		}
		sb.WriteString(sel.String())
	}
	sb.WriteString(" { ")
	for i, decl := range s.Declarations {
		if i > 0 {
			sb.WriteString("; ")
		}
		sb.WriteString(decl.String())
	}
	sb.WriteString(" }")
	return sb.String()
}

type KeyframeSelector interface {
	Node
	keyframeSelector()
}

var (
	_ KeyframeSelector = (*Keyword)(nil)
	_ KeyframeSelector = (*Percent)(nil)
)

type FontFaceRule struct {
	Declarations []*Declaration
}

func (*FontFaceRule) rule() {}

func (s *FontFaceRule) String() string {
	sb := new(strings.Builder)
	sb.WriteString("@font-face { ")
	for i, decl := range s.Declarations {
		if i > 0 {
			sb.WriteString("; ")
		}
		sb.WriteString(decl.String())
	}
	sb.WriteString(" }")
	return sb.String()
}

func (s *FontFaceRule) Visit(v Visitor) {
	// v.VisitFontFaceRule(s)
}

type MediaConstraint interface {
	Node
	mediaConstraint()
}

var (
	_ MediaConstraint = (*MediaType)(nil)
	_ MediaConstraint = (*MediaFeature)(nil)
)

type MediaType struct {
	Name string
}

func (*MediaType) mediaConstraint() {}

func (s *MediaType) String() string {
	return s.Name
}

func (s *MediaType) Visit(v Visitor) {
	// v.VisitMediaType(s)
}

type MediaFeature struct {
	Name   string
	Before *MediaFeatureCondition
	After  *MediaFeatureCondition
}

type MediaFeatureCondition struct {
	Operator string
	Value    Value
}

func (*MediaFeature) mediaConstraint() {}

func (s *MediaFeature) String() string {
	sb := new(strings.Builder)
	sb.WriteString("(")
	if s.Before != nil {
		sb.WriteString(s.Before.Value.String())
		if s.Before.Operator != ":" {
			sb.WriteString(" ")
		}
		sb.WriteString(s.Before.Operator)
		sb.WriteString(" ")
	}
	sb.WriteString(s.Name)
	if s.After != nil {
		if s.After.Operator != ":" {
			sb.WriteString(" ")
		}
		sb.WriteString(s.After.Operator)
		sb.WriteString(" ")
		sb.WriteString(s.After.Value.String())
	}
	sb.WriteString(")")
	return sb.String()
}

func (s *MediaFeature) Visit(v Visitor) {
	// v.VisitMediaFeature(s)
}

type MediaCondition struct {
	Operator   string
	Constraint MediaConstraint
	Right      *MediaCondition
}

func (c *MediaCondition) String() string {
	sb := new(strings.Builder)
	if c.Operator == "not" || c.Operator == "only" {
		sb.WriteString(c.Operator)
		sb.WriteString(" ")
		sb.WriteString(c.Right.String())
		return sb.String()
	}
	sb.WriteString(c.Constraint.String())
	if c.Operator != "" {
		if c.Operator != "," {
			sb.WriteString(" ")
		}
		sb.WriteString(c.Operator)
	}
	if c.Right != nil {
		sb.WriteString(" ")
		sb.WriteString(c.Right.String())
	}
	return sb.String()
}

func (*MediaCondition) Visit(v Visitor) {
	// v.VisitMediaCondition(s)
}

// type SupportConstraint interface {
// 	Node
// 	supportsConstraint()
// }

var (
	_ SupportsField = (*SupportsProperty)(nil)
	_ SupportsField = (*SupportsFunction)(nil)
)

type SupportsRule struct {
	Condition *SupportsCondition
	Rules     []Rule
}

func (*SupportsRule) rule() {}

func (s *SupportsRule) String() string {
	sb := new(strings.Builder)
	sb.WriteString("@supports")
	sb.WriteString(" ")
	sb.WriteString(s.Condition.String())
	sb.WriteString(" {")
	if len(s.Rules) > 0 {
		sb.WriteString("\n")
		for _, r := range s.Rules {
			sb.WriteString("  ")
			sb.WriteString(r.String())
			sb.WriteString("\n")
		}
	}
	sb.WriteString("}")
	return sb.String()
}

func (s *SupportsRule) Visit(v Visitor) {
	// v.VisitSupportsRule(s)
}

type SupportsCondition struct {
	Operator string // not, and, or
	Field    SupportsField
	Children []*SupportsCondition
}

func (c *SupportsCondition) String() string {
	sb := new(strings.Builder)
	if c.Operator != "" {
		sb.WriteString(c.Operator)
		if c.Field != nil {
			sb.WriteString(" ")
		}
	}
	if c.Field != nil {
		sb.WriteString(c.Field.String())
	}
	for _, child := range c.Children {
		sb.WriteString(" ")
		sb.WriteString(child.String())
	}
	return sb.String()
}

type SupportsField interface {
	Node
	supportsField()
}

type SupportsProperty struct {
	Name  string
	Value Value
}

func (*SupportsProperty) supportsField() {}

func (s *SupportsProperty) String() string {
	sb := new(strings.Builder)
	sb.WriteString("(")
	sb.WriteString(s.Name)
	sb.WriteString(": ")
	sb.WriteString(s.Value.String())
	sb.WriteString(")")
	return sb.String()
}

func (s *SupportsProperty) Visit(v Visitor) {
	// v.VisitSupportsCondition(s)
}

type SupportsFunction struct {
	Name string
	Args []Argument
}

func (*SupportsFunction) supportsField() {}

func (s *SupportsFunction) String() string {
	sb := new(strings.Builder)
	sb.WriteString(s.Name)
	sb.WriteString("(")
	for i, arg := range s.Args {
		if i > 0 {
			sb.WriteString(", ")
		}
		sb.WriteString(arg.String())
	}
	sb.WriteString(")")
	return sb.String()
}

func (s *SupportsFunction) Visit(v Visitor) {
	// v.VisitSupportsFunction(s)
}

type CharsetRule struct {
	Charset string
}

func (*CharsetRule) rule() {}

func (s *CharsetRule) String() string {
	return "@charset \"" + s.Charset + "\";"
}

func (s *CharsetRule) Visit(v Visitor) {
	// v.VisitCharsetRule(s)
}

type Selector struct {
	Components []SelectorComponent
}

var _ Node = &Selector{}

func (s *Selector) argument() {}

func (s *Selector) String() string {
	sb := new(strings.Builder)
	for _, c := range s.Components {
		sb.WriteString(c.String())
	}
	return sb.String()
}

func (s *Selector) Visit(v Visitor) {
	// v.VisitSelector(s)
}

type Argument interface {
	Node
	argument()
}

var (
	_ Argument = (*Selector)(nil)
	_ Argument = (*Separator)(nil)
	_ Argument = (*Keyword)(nil)
	_ Argument = (*Number)(nil)
	_ Argument = (*Percent)(nil)
	_ Argument = (*Length)(nil)
	_ Argument = (*AnPlusB)(nil)
)

type AnPlusB struct {
	A int
	B int
}

func (*AnPlusB) argument() {}

func (s *AnPlusB) String() string {
	sb := new(strings.Builder)
	switch s.A {
	case 1:
		sb.WriteString("n")
	case -1:
		sb.WriteString("-n")
	default:
		sb.WriteString(strconv.Itoa(s.A))
	}
	if s.B > 0 {
		sb.WriteString(" + ")
		sb.WriteString(strconv.Itoa(s.B))
	} else if s.B < 0 {
		sb.WriteString(" - ")
		sb.WriteString(strconv.Itoa(s.B))
	}
	return sb.String()
}

func (s *AnPlusB) Visit(v Visitor) {
	// v.VisitAnPlusB(s)
}

type SelectorComponent interface {
	Node
	selectorComponent()
}

var (
	_ SelectorComponent = (*Separator)(nil)
	_ SelectorComponent = (*UniversalComponent)(nil)
	_ SelectorComponent = (*NamespaceComponent)(nil)
	_ SelectorComponent = (*ElementComponent)(nil)
	_ SelectorComponent = (*IdComponent)(nil)
	_ SelectorComponent = (*ClassComponent)(nil)
	_ SelectorComponent = (*AttributeComponent)(nil)
	_ SelectorComponent = (*PseudoClassComponent)(nil)
	_ SelectorComponent = (*PseudoElementComponent)(nil)
	_ SelectorComponent = (*NestingComponent)(nil)
)

type Separator struct {
	Value string
}

func (*Separator) selectorComponent() {}
func (*Separator) argument()          {}
func (*Separator) value()             {}

func (c *Separator) String() string {
	switch c.Value {
	case " ":
		return " "
	case ",":
		return ", "
	default:
		return " " + c.Value + " "
	}
}

func (c *Separator) Visit(v Visitor) {
	// v.VisitCombinatorComponent(c)
}

type UniversalComponent struct{}

func (*UniversalComponent) selectorComponent() {}

func (*UniversalComponent) String() string {
	return "*"
}

func (*UniversalComponent) Visit(v Visitor) {
	// v.VisitUniversalComponent(c)
}

type NamespaceComponent struct {
	Kind   string
	Prefix string
}

func (*NamespaceComponent) selectorComponent() {}

func (*NamespaceComponent) String() string {
	return ""
}

func (*NamespaceComponent) Visit(v Visitor) {
	// v.VisitNamespaceComponent(c)
}

type ElementComponent struct {
	Name string
}

func (*ElementComponent) selectorComponent() {}

func (e *ElementComponent) String() string {
	return e.Name
}

func (*ElementComponent) Visit(v Visitor) {
	// v.VisitElementComponent(c)
}

type IdComponent struct {
	Name string
}

func (*IdComponent) selectorComponent() {}

func (c *IdComponent) String() string {
	return "#" + c.Name
}

func (c *IdComponent) Visit(v Visitor) {
	// v.VisitIdComponent(c)
}

type ClassComponent struct {
	Name string
}

func (*ClassComponent) selectorComponent() {}

func (c *ClassComponent) String() string {
	return "." + c.Name
}

func (c *ClassComponent) Visit(v Visitor) {
	// v.VisitClassComponent(c)
}

type PseudoClassComponent struct {
	Name string
	Args []Argument
}

func (*PseudoClassComponent) selectorComponent() {}

func (c *PseudoClassComponent) String() string {
	sb := new(strings.Builder)
	sb.WriteString(":")
	sb.WriteString(c.Name)
	if len(c.Args) > 0 {
		sb.WriteString("(")
		for i, arg := range c.Args {
			if i > 0 {
				sb.WriteString(", ")
			}
			sb.WriteString(arg.String())
		}
		sb.WriteString(")")
	}
	return sb.String()
}

func (c *PseudoClassComponent) Visit(v Visitor) {
	// v.VisitPseudoClassComponent(c)
}

type PseudoElementComponent struct {
	Name string
	Args []Argument
}

func (*PseudoElementComponent) selectorComponent() {}

func (c *PseudoElementComponent) String() string {
	sb := new(strings.Builder)
	sb.WriteString("::")
	sb.WriteString(c.Name)
	if len(c.Args) > 0 {
		sb.WriteString("(")
		for i, arg := range c.Args {
			if i > 0 {
				sb.WriteString(", ")
			}
			sb.WriteString(arg.String())
		}
		sb.WriteString(")")
	}
	return sb.String()
}

func (c *PseudoElementComponent) Visit(v Visitor) {
	// v.VisitPseudoElementComponent(c)
}

type AttributeComponent struct {
	Name      string
	Operation *AttributeOperation
}

var _ Node = (*AttributeComponent)(nil)

func (*AttributeComponent) selectorComponent() {}

func (c *AttributeComponent) String() string {
	sb := new(strings.Builder)
	sb.WriteString("[")
	sb.WriteString(c.Name)
	if c.Operation != nil {
		sb.WriteString(c.Operation.String())
	}
	sb.WriteString("]")
	return sb.String()
}

type AttributeOperation struct {
	Operator string
	Value    string
}

var _ Node = (*AttributeOperation)(nil)

func (s *AttributeOperation) String() string {
	return s.Operator + s.Value
}

func (s *AttributeOperation) Visit(v Visitor) {
	// v.VisitAttributeOperation(s)
}

func (*AttributeComponent) Visit(v Visitor) {
	// v.VisitAttributeComponent(c)
}

type NestingComponent struct{}

func (*NestingComponent) selectorComponent() {}

func (*NestingComponent) String() string {
	return ""
}

func (*NestingComponent) Visit(v Visitor) {
	// v.VisitNestingComponent(c)
}

type Declaration struct {
	Property  string
	Value     Value
	Important bool
}

func (s *Declaration) String() string {
	sb := new(strings.Builder)
	sb.WriteString(s.Property)
	sb.WriteString(":")
	if s.Value != nil {
		sb.WriteString(" ")
		sb.WriteString(s.Value.String())
	}
	if s.Important {
		sb.WriteString(" !important")
	}
	return sb.String()
}

func (s *Declaration) Visit(v Visitor) {
	// v.VisitDeclaration(s)
}

type Value interface {
	Node
	Argument
	value()
}

var (
	_ Value = (*Keyword)(nil)
	_ Value = (*Length)(nil)
	_ Value = (*Percent)(nil)
	_ Value = (*Ratio)(nil)
	_ Value = (*Number)(nil)
	_ Value = (*StringValue)(nil)
	_ Value = (*FunctionValue)(nil)
	_ Value = (*RawValue)(nil)
	_ Value = (*Separator)(nil)
	_ Value = (*ListValue)(nil)
)

type Keyword struct {
	Name string
}

func (*Keyword) value()            {}
func (*Keyword) argument()         {}
func (*Keyword) keyframeSelector() {}

func (s *Keyword) String() string {
	return s.Name
}

func (s *Keyword) Visit(v Visitor) {
	// v.VisitKeywordValue(s)
}

type FunctionValue struct {
	Name string
	Args []Value
}

func (*FunctionValue) value()    {}
func (*FunctionValue) argument() {}

func (s *FunctionValue) String() string {
	sb := new(strings.Builder)
	sb.WriteString(s.Name)
	sb.WriteString("(")
	for i, arg := range s.Args {
		if i > 0 {
			sb.WriteString(", ")
		}
		sb.WriteString(arg.String())
	}
	sb.WriteString(")")
	return sb.String()
}

func (s *FunctionValue) Visit(v Visitor) {
	// v.VisitFunctionValue(s)
}

type Length struct {
	Value float64
	Unit  string
}

func (*Length) value()    {}
func (*Length) argument() {}

func (s *Length) String() string {
	return strconv.FormatFloat(s.Value, 'f', -1, 64) + s.Unit
}

func (s *Length) Visit(v Visitor) {
	// v.VisitLengthValue(s)
}

type Percent struct {
	Value float64
}

func (*Percent) value()            {}
func (*Percent) argument()         {}
func (*Percent) keyframeSelector() {}

func (s *Percent) String() string {
	return strconv.FormatFloat(s.Value, 'f', -1, 64) + "%"
}

func (s *Percent) Visit(v Visitor) {
	// v.VisitPercentValue(s)
}

type Ratio struct {
	Numerator   float64
	Denominator float64
}

func (*Ratio) value()    {}
func (*Ratio) argument() {}

func (s *Ratio) String() string {
	return strconv.FormatFloat(s.Numerator, 'f', -1, 64) + "/" + strconv.FormatFloat(s.Denominator, 'f', -1, 64)
}

func (s *Ratio) Visit(v Visitor) {
	// v.VisitRatioValue(s)
}

type Number struct {
	Value float64
}

func (*Number) value()    {}
func (*Number) argument() {}

func (s *Number) String() string {
	return strconv.FormatFloat(s.Value, 'f', -1, 64)
}

func (s *Number) Visit(v Visitor) {
	// v.VisitNumberValue(s)
}

type StringValue struct {
	Value string
}

func (*StringValue) value()    {}
func (*StringValue) argument() {}

func (s *StringValue) String() string {
	return s.Value
}

func (s *StringValue) Visit(v Visitor) {
	// v.VisitStringValue(s)
}

type RawValue struct {
	Value string
}

func (*RawValue) value()    {}
func (*RawValue) argument() {}

func (s *RawValue) String() string {
	return strings.TrimSpace(s.Value)
}

func (s *RawValue) Visit(v Visitor) {
	// v.VisitRawValue(s)
}

type ListValue struct {
	Values []Value
}

func (*ListValue) value()    {}
func (*ListValue) argument() {}

func (s *ListValue) String() string {
	sb := new(strings.Builder)
	for _, v := range s.Values {
		sb.WriteString(v.String())
	}
	return sb.String()
}

func (s *ListValue) Visit(v Visitor) {
	// v.VisitListValue(s)
}
