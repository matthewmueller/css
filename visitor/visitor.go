package visitor

import (
	"github.com/matthewmueller/css/ast"
)

// New base visitor
func New() *Visitor {
	v := &Visitor{}
	v.Stylesheet = func(n *ast.Stylesheet) {
		for _, rule := range n.Rules {
			rule.Visit(v)
		}
	}
	v.Comment = func(n *ast.Comment) {
	}
	v.StyleRule = func(n *ast.StyleRule) {
		for _, selector := range n.Selectors {
			selector.Visit(v)
		}
		for _, declaration := range n.Declarations {
			declaration.Visit(v)
		}
	}
	v.MediaRule = func(n *ast.MediaRule) {
		for _, rule := range n.Rules {
			rule.Visit(v)
		}
	}
	v.MediaCondition = func(n *ast.MediaCondition) {
		n.Constraint.Visit(v)
		if n.Right != nil {
			n.Right.Visit(v)
		}
	}
	v.MediaFeature = func(n *ast.MediaFeature) {
	}
	v.MediaType = func(n *ast.MediaType) {
	}
	v.ImportRule = func(n *ast.ImportRule) {
		if n.Supports != nil {
			n.Supports.Visit(v)
		}
		if n.Media != nil {
			n.Media.Visit(v)
		}
	}
	v.KeyFramesRule = func(n *ast.KeyFramesRule) {
		for _, keyframe := range n.Keyframes {
			keyframe.Visit(v)
		}
	}
	v.KeyFrame = func(n *ast.KeyFrame) {
		for _, selector := range n.Selectors {
			selector.Visit(v)
		}
		for _, declaration := range n.Declarations {
			declaration.Visit(v)
		}
	}
	v.FontFaceRule = func(n *ast.FontFaceRule) {
		for _, declaration := range n.Declarations {
			declaration.Visit(v)
		}
	}
	v.SupportsRule = func(n *ast.SupportsRule) {
		if n.Condition != nil {
			n.Condition.Visit(v)
		}
		for _, rule := range n.Rules {
			rule.Visit(v)
		}
	}
	v.SupportsCondition = func(n *ast.SupportsCondition) {
		if n.Field != nil {
			n.Field.Visit(v)
		}
		for _, children := range n.Children {
			children.Visit(v)
		}
	}
	v.SupportsProperty = func(n *ast.SupportsProperty) {
	}
	v.SupportsFunction = func(n *ast.SupportsFunction) {
		for _, arg := range n.Args {
			arg.Visit(v)
		}
	}
	v.CharsetRule = func(n *ast.CharsetRule) {
	}
	v.Selector = func(n *ast.Selector) {
		for _, component := range n.Components {
			component.Visit(v)
		}
	}
	v.CombinatorComponent = func(n *ast.CombinatorComponent) {
	}
	v.UniversalComponent = func(n *ast.UniversalComponent) {
	}
	v.NamespaceComponent = func(n *ast.NamespaceComponent) {
	}
	v.ElementComponent = func(n *ast.ElementComponent) {
	}
	v.IdComponent = func(n *ast.IdComponent) {
	}
	v.ClassComponent = func(n *ast.ClassComponent) {
	}
	v.AttributeComponent = func(n *ast.AttributeComponent) {
		if n.Value != nil {
			n.Value.Visit(v)
		}
	}
	v.PseudoClassComponent = func(n *ast.PseudoClassComponent) {
		for _, arg := range n.Args {
			arg.Visit(v)
		}
	}
	v.PseudoElementComponent = func(n *ast.PseudoElementComponent) {
		for _, arg := range n.Args {
			arg.Visit(v)
		}
	}
	v.NestingComponent = func(n *ast.NestingComponent) {
	}
	v.Declaration = func(n *ast.Declaration) {
		if n.Value != nil {
			n.Value.Visit(v)
		}
	}
	v.KeywordValue = func(n *ast.Keyword) {
	}
	v.FunctionValue = func(n *ast.FunctionValue) {
		for _, arg := range n.Args {
			arg.Visit(v)
		}
	}
	v.LengthValue = func(n *ast.Length) {
	}
	v.PercentValue = func(n *ast.Percent) {
	}
	v.RatioValue = func(n *ast.Ratio) {
	}
	v.NumberValue = func(n *ast.Number) {
	}
	v.StringValue = func(n *ast.StringValue) {
	}
	v.RawValue = func(n *ast.RawValue) {
	}
	v.ListValue = func(n *ast.ListValue) {
		for _, value := range n.Values {
			value.Visit(v)
		}
	}
	v.AnPlusB = func(n *ast.AnPlusB) {
	}
	return v
}

var _ ast.Visitor = (*Visitor)(nil)

type Visitor struct {
	Stylesheet             func(*ast.Stylesheet)
	Comment                func(*ast.Comment)
	StyleRule              func(*ast.StyleRule)
	MediaRule              func(*ast.MediaRule)
	MediaCondition         func(*ast.MediaCondition)
	MediaFeature           func(*ast.MediaFeature)
	MediaType              func(*ast.MediaType)
	ImportRule             func(*ast.ImportRule)
	KeyFramesRule          func(*ast.KeyFramesRule)
	KeyFrame               func(*ast.KeyFrame)
	FontFaceRule           func(*ast.FontFaceRule)
	SupportsRule           func(*ast.SupportsRule)
	SupportsCondition      func(*ast.SupportsCondition)
	SupportsProperty       func(*ast.SupportsProperty)
	SupportsFunction       func(*ast.SupportsFunction)
	CharsetRule            func(*ast.CharsetRule)
	Selector               func(*ast.Selector)
	CombinatorComponent    func(*ast.CombinatorComponent)
	UniversalComponent     func(*ast.UniversalComponent)
	NamespaceComponent     func(*ast.NamespaceComponent)
	ElementComponent       func(*ast.ElementComponent)
	IdComponent            func(*ast.IdComponent)
	ClassComponent         func(*ast.ClassComponent)
	AttributeComponent     func(*ast.AttributeComponent)
	PseudoClassComponent   func(*ast.PseudoClassComponent)
	PseudoElementComponent func(*ast.PseudoElementComponent)
	NestingComponent       func(*ast.NestingComponent)
	Declaration            func(*ast.Declaration)
	KeywordValue           func(*ast.Keyword)
	FunctionValue          func(*ast.FunctionValue)
	LengthValue            func(*ast.Length)
	PercentValue           func(*ast.Percent)
	RatioValue             func(*ast.Ratio)
	NumberValue            func(*ast.Number)
	StringValue            func(*ast.StringValue)
	RawValue               func(*ast.RawValue)
	ListValue              func(*ast.ListValue)
	AnPlusB                func(*ast.AnPlusB)
}

func (v *Visitor) VisitStylesheet(n *ast.Stylesheet) {
	v.Stylesheet(n)
}

func (v *Visitor) VisitComment(n *ast.Comment) {
	v.Comment(n)
}

func (v *Visitor) VisitStyleRule(n *ast.StyleRule) {
	v.StyleRule(n)
}

func (v *Visitor) VisitMediaRule(n *ast.MediaRule) {
	v.MediaRule(n)
}

func (v *Visitor) VisitMediaCondition(n *ast.MediaCondition) {
	v.MediaCondition(n)
}

func (v *Visitor) VisitMediaFeature(n *ast.MediaFeature) {
	v.MediaFeature(n)
}

func (v *Visitor) VisitMediaType(n *ast.MediaType) {
	v.MediaType(n)
}

func (v *Visitor) VisitImportRule(n *ast.ImportRule) {
	v.ImportRule(n)
}

func (v *Visitor) VisitKeyFramesRule(n *ast.KeyFramesRule) {
	v.KeyFramesRule(n)
}

func (v *Visitor) VisitKeyFrame(n *ast.KeyFrame) {
	v.KeyFrame(n)
}

func (v *Visitor) VisitFontFaceRule(n *ast.FontFaceRule) {
	v.FontFaceRule(n)
}

func (v *Visitor) VisitSupportsRule(n *ast.SupportsRule) {
	v.SupportsRule(n)
}

func (v *Visitor) VisitSupportsCondition(n *ast.SupportsCondition) {
	v.SupportsCondition(n)
}

func (v *Visitor) VisitSupportsProperty(n *ast.SupportsProperty) {
	v.SupportsProperty(n)
}

func (v *Visitor) VisitSupportsFunction(n *ast.SupportsFunction) {
	v.SupportsFunction(n)
}

func (v *Visitor) VisitCharsetRule(n *ast.CharsetRule) {
	v.CharsetRule(n)
}

func (v *Visitor) VisitSelector(n *ast.Selector) {
	v.Selector(n)
}

func (v *Visitor) VisitCombinatorComponent(n *ast.CombinatorComponent) {
	v.CombinatorComponent(n)
}

func (v *Visitor) VisitUniversalComponent(n *ast.UniversalComponent) {
	v.UniversalComponent(n)
}

func (v *Visitor) VisitNamespaceComponent(n *ast.NamespaceComponent) {
	v.NamespaceComponent(n)
}

func (v *Visitor) VisitElementComponent(n *ast.ElementComponent) {
	v.ElementComponent(n)
}

func (v *Visitor) VisitIdComponent(n *ast.IdComponent) {
	v.IdComponent(n)
}

func (v *Visitor) VisitClassComponent(n *ast.ClassComponent) {
	v.ClassComponent(n)
}

func (v *Visitor) VisitAttributeComponent(n *ast.AttributeComponent) {
	v.AttributeComponent(n)
}

func (v *Visitor) VisitPseudoClassComponent(n *ast.PseudoClassComponent) {
	v.PseudoClassComponent(n)
}

func (v *Visitor) VisitPseudoElementComponent(n *ast.PseudoElementComponent) {
	v.PseudoElementComponent(n)
}

func (v *Visitor) VisitNestingComponent(n *ast.NestingComponent) {
	v.NestingComponent(n)
}

func (v *Visitor) VisitDeclaration(n *ast.Declaration) {
	v.Declaration(n)
}

func (v *Visitor) VisitKeywordValue(n *ast.Keyword) {
	v.KeywordValue(n)
}

func (v *Visitor) VisitFunctionValue(n *ast.FunctionValue) {
	v.FunctionValue(n)
}

func (v *Visitor) VisitLengthValue(n *ast.Length) {
	v.LengthValue(n)
}

func (v *Visitor) VisitPercentValue(n *ast.Percent) {
	v.PercentValue(n)
}

func (v *Visitor) VisitRatioValue(n *ast.Ratio) {
	v.RatioValue(n)
}

func (v *Visitor) VisitNumberValue(n *ast.Number) {
	v.NumberValue(n)
}

func (v *Visitor) VisitStringValue(n *ast.StringValue) {
	v.StringValue(n)
}

func (v *Visitor) VisitRawValue(n *ast.RawValue) {
	v.RawValue(n)
}

func (v *Visitor) VisitListValue(n *ast.ListValue) {
	v.ListValue(n)
}

func (v *Visitor) VisitAnPlusB(n *ast.AnPlusB) {
	v.AnPlusB(n)
}
