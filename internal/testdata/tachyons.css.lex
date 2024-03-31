comment:"/* TACHYONS v4.0.4| github.com/tachyons-css/tachyons */"
space:"\n"
comment:"/* External Library Includes */"
space:"\n"
comment:"/*! normalize.css v4.1.1 | MIT License | github.com/necolas/normalize.css */"
space:"\n"
comment:"/**\n * 1. Change the default font family in all browsers (opinionated).\n * 2. Correct the line height in all browsers.\n * 3. Prevent adjustments of font size after orientation changes in IE and iOS.\n */"
space:"\n"
ident:"html"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"sans-serif"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"line-height"
:
space:" "
number:"1.15"
;
space:" "
comment:"/* 2 */"
space:" "
-
ident:"ms-text-size-adjust"
:
space:" "
number:"100"
percent:"%"
;
space:" "
comment:"/* 3 */"
space:" "
-
ident:"webkit-text-size-adjust"
:
space:" "
number:"100"
percent:"%"
;
space:" "
comment:"/* 3 */"
space:" "
}
space:"\n"
comment:"/**\n * Remove the margin in all browsers (opinionated).\n */"
space:"\n"
ident:"body"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/* HTML5 display definitions\n   ========================================================================== */"
space:"\n"
comment:"/**\n * Add the correct display in IE 9-.\n * 1. Add the correct display in Edge, IE, and Firefox.\n * 2. Add the correct display in IE.\n */"
space:"\n"
ident:"article"
,
space:" "
ident:"aside"
,
space:" "
ident:"details"
,
space:" "
comment:"/* 1 */"
space:"\n"
ident:"figcaption"
,
space:" "
ident:"figure"
,
space:" "
ident:"footer"
,
space:" "
ident:"header"
,
space:" "
ident:"main"
,
space:"\n"
comment:"/* 2 */"
space:"\n"
ident:"menu"
,
space:" "
ident:"nav"
,
space:" "
ident:"section"
,
space:" "
ident:"summary"
space:" "
{
comment:"/* 1 */"
space:" "
ident:"display"
:
space:" "
ident:"block"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct display in IE 9-.\n */"
space:"\n"
ident:"audio"
,
space:" "
ident:"canvas"
,
space:" "
ident:"progress"
,
space:" "
ident:"video"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-block"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct display in iOS 4-7.\n */"
space:"\n"
ident:"audio"
:
ident:"not"
(
[
ident:"controls"
]
)
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"none"
;
space:" "
ident:"height"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct vertical alignment in Chrome, Firefox, and Opera.\n */"
space:"\n"
ident:"progress"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct display in IE 10-.\n * 1. Add the correct display in IE.\n */"
space:"\n"
ident:"template"
,
space:" "
comment:"/* 1 */"
space:"\n"
[
ident:"hidden"
]
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/* Links\n   ========================================================================== */"
space:"\n"
comment:"/**\n * 1. Remove the gray background on active links in IE 10.\n * 2. Remove gaps in links underline in iOS 8+ and Safari 8+.\n */"
space:"\n"
ident:"a"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"transparent"
;
space:" "
comment:"/* 1 */"
space:" "
-
ident:"webkit-text-decoration-skip"
:
space:" "
ident:"objects"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/**\n * Remove the outline on focused links when they are also active or hovered\n * in all browsers (opinionated).\n */"
space:"\n"
ident:"a"
:
ident:"active"
,
space:" "
ident:"a"
:
ident:"hover"
space:" "
{
space:" "
ident:"outline-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/* Text-level semantics\n   ========================================================================== */"
space:"\n"
comment:"/**\n * 1. Remove the bottom border in Firefox 39-.\n * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.\n */"
space:"\n"
ident:"abbr"
[
ident:"title"
]
space:" "
{
space:" "
ident:"border-bottom"
:
space:" "
ident:"none"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"text-decoration"
:
space:" "
ident:"underline"
;
space:" "
comment:"/* 2 */"
space:" "
ident:"text-decoration"
:
space:" "
ident:"underline"
space:" "
ident:"dotted"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/**\n * Prevent the duplicate application of `bolder` by the next rule in Safari 6.\n */"
space:"\n"
ident:"b"
,
space:" "
ident:"strong"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"inherit"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct font weight in Chrome, Edge, and Safari.\n */"
space:"\n"
ident:"b"
,
space:" "
ident:"strong"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"bolder"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct font style in Android 4.3-.\n */"
space:"\n"
ident:"dfn"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"italic"
;
space:" "
}
space:"\n"
comment:"/**\n * Correct the font size and margin on `h1` elements within `section` and\n * `article` contexts in Chrome, Firefox, and Safari.\n */"
space:"\n"
ident:"h1"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"2"
ident:"em"
;
space:" "
ident:"margin"
:
space:" "
number:"0.67"
ident:"em"
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct background and color in IE 9-.\n */"
space:"\n"
ident:"mark"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ff0"
;
space:" "
ident:"color"
:
space:" "
#
ident:"000"
;
space:" "
}
space:"\n"
comment:"/**\n * Add the correct font size in all browsers.\n */"
space:"\n"
ident:"small"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"80"
percent:"%"
;
space:" "
}
space:"\n"
comment:"/**\n * Prevent `sub` and `sup` elements from affecting the line height in\n * all browsers.\n */"
space:"\n"
ident:"sub"
,
space:" "
ident:"sup"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"75"
percent:"%"
;
space:" "
ident:"line-height"
:
space:" "
number:"0"
;
space:" "
ident:"position"
:
space:" "
ident:"relative"
;
space:" "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
ident:"sub"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"0.25"
ident:"em"
;
space:" "
}
space:"\n"
ident:"sup"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"0.5"
ident:"em"
;
space:" "
}
space:"\n"
comment:"/* Embedded content\n   ========================================================================== */"
space:"\n"
comment:"/**\n * Remove the border on images inside links in IE 10-.\n */"
space:"\n"
ident:"img"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/**\n * Hide the overflow in IE.\n */"
space:"\n"
ident:"svg"
:
ident:"not"
(
:
ident:"root"
)
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
comment:"/* Grouping content\n   ========================================================================== */"
space:"\n"
comment:"/**\n * 1. Correct the inheritance and scaling of font size in all browsers.\n * 2. Correct the odd `em` font sizing in all browsers.\n */"
space:"\n"
ident:"code"
,
space:" "
ident:"kbd"
,
space:" "
ident:"pre"
,
space:" "
ident:"samp"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"monospace"
,
space:" "
ident:"monospace"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"font-size"
:
space:" "
number:"1"
ident:"em"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/**\n * Add the correct margin in IE 8.\n */"
space:"\n"
ident:"figure"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"1"
ident:"em"
space:" "
number:"40"
ident:"px"
;
space:" "
}
space:"\n"
comment:"/**\n * 1. Add the correct box sizing in Firefox.\n * 2. Show the overflow in Edge and IE.\n */"
space:"\n"
ident:"hr"
space:" "
{
space:" "
ident:"box-sizing"
:
space:" "
ident:"content-box"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"height"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/* Forms\n   ========================================================================== */"
space:"\n"
comment:"/**\n * 1. Change font properties to `inherit` in all browsers (opinionated).\n * 2. Remove the margin in Firefox and Safari.\n */"
space:"\n"
ident:"button"
,
space:" "
ident:"input"
,
space:" "
ident:"optgroup"
,
space:" "
ident:"select"
,
space:" "
ident:"textarea"
space:" "
{
space:" "
ident:"font"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"margin"
:
space:" "
number:"0"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/**\n * Restore the font weight unset by the previous rule.\n */"
space:"\n"
ident:"optgroup"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"bold"
;
space:" "
}
space:"\n"
comment:"/**\n * Show the overflow in IE.\n * 1. Show the overflow in Edge.\n */"
space:"\n"
ident:"button"
,
space:" "
ident:"input"
space:" "
{
comment:"/* 1 */"
space:" "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
comment:"/**\n * Remove the inheritance of text transform in Edge, Firefox, and IE.\n * 1. Remove the inheritance of text transform in Firefox.\n */"
space:"\n"
ident:"button"
,
space:" "
ident:"select"
space:" "
{
comment:"/* 1 */"
space:" "
ident:"text-transform"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/**\n * 1. Prevent a WebKit bug where (2) destroys native `audio` and `video`\n *    controls in Android 4.\n * 2. Correct the inability to style clickable types in iOS and Safari.\n */"
space:"\n"
ident:"button"
,
space:" "
ident:"html"
space:" "
[
ident:"type"
=
string:"\"button\""
]
,
space:" "
comment:"/* 1 */"
space:"\n"
[
ident:"type"
=
string:"\"reset\""
]
,
space:" "
[
ident:"type"
=
string:"\"submit\""
]
space:" "
{
space:" "
-
ident:"webkit-appearance"
:
space:" "
ident:"button"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/**\n * Remove the inner border and padding in Firefox.\n */"
space:"\n"
ident:"button"
::
ident:"-moz-focus-inner"
,
space:" "
[
ident:"type"
=
string:"\"button\""
]
::
ident:"-moz-focus-inner"
,
space:"\n"
[
ident:"type"
=
string:"\"reset\""
]
::
ident:"-moz-focus-inner"
,
space:" "
[
ident:"type"
=
string:"\"submit\""
]
::
ident:"-moz-focus-inner"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/**\n * Restore the focus styles unset by the previous rule.\n */"
space:"\n"
ident:"button"
:
ident:"-moz-focusring"
,
space:" "
[
ident:"type"
=
string:"\"button\""
]
:
ident:"-moz-focusring"
,
space:"\n"
[
ident:"type"
=
string:"\"reset\""
]
:
ident:"-moz-focusring"
,
space:" "
[
ident:"type"
=
string:"\"submit\""
]
:
ident:"-moz-focusring"
space:" "
{
space:" "
ident:"outline"
:
space:" "
number:"1"
ident:"px"
space:" "
ident:"dotted"
space:" "
ident:"ButtonText"
;
space:" "
}
space:"\n"
comment:"/**\n * Change the border, margin, and padding in all browsers (opinionated).\n */"
space:"\n"
ident:"fieldset"
space:" "
{
space:" "
ident:"border"
:
space:" "
number:"1"
ident:"px"
space:" "
ident:"solid"
space:" "
#
ident:"c0c0c0"
;
space:" "
ident:"margin"
:
space:" "
number:"0"
space:" "
number:"2"
ident:"px"
;
space:" "
ident:"padding"
:
space:" "
number:"0.35"
ident:"em"
space:" "
number:"0.625"
ident:"em"
space:" "
number:"0.75"
ident:"em"
;
space:" "
}
space:"\n"
comment:"/**\n * 1. Correct the text wrapping in Edge and IE.\n * 2. Correct the color inheritance from `fieldset` elements in IE.\n * 3. Remove the padding so developers are not caught out when they zero out\n *    `fieldset` elements in all browsers.\n */"
space:"\n"
ident:"legend"
space:" "
{
space:" "
ident:"box-sizing"
:
space:" "
ident:"border-box"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"color"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 2 */"
space:" "
ident:"display"
:
space:" "
ident:"table"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"max-width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
comment:"/* 3 */"
space:" "
ident:"white-space"
:
space:" "
ident:"normal"
;
space:" "
comment:"/* 1 */"
space:" "
}
space:"\n"
comment:"/**\n * Remove the default vertical scrollbar in IE.\n */"
space:"\n"
ident:"textarea"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
comment:"/**\n * 1. Add the correct box sizing in IE 10-.\n * 2. Remove the padding in IE 10-.\n */"
space:"\n"
[
ident:"type"
=
string:"\"checkbox\""
]
,
space:" "
[
ident:"type"
=
string:"\"radio\""
]
space:" "
{
space:" "
ident:"box-sizing"
:
space:" "
ident:"border-box"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/**\n * Correct the cursor style of increment and decrement buttons in Chrome.\n */"
space:"\n"
[
ident:"type"
=
string:"\"number\""
]
::
ident:"-webkit-inner-spin-button"
,
space:"\n"
[
ident:"type"
=
string:"\"number\""
]
::
ident:"-webkit-outer-spin-button"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
comment:"/**\n * 1. Correct the odd appearance in Chrome and Safari.\n * 2. Correct the outline style in Safari.\n */"
space:"\n"
[
ident:"type"
=
string:"\"search\""
]
space:" "
{
space:" "
-
ident:"webkit-appearance"
:
space:" "
ident:"textfield"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"outline-offset"
:
space:" "
-
number:"2"
ident:"px"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/**\n * Remove the inner padding and cancel buttons in Chrome and Safari on OS X.\n */"
space:"\n"
[
ident:"type"
=
string:"\"search\""
]
::
ident:"-webkit-search-cancel-button"
,
space:"\n"
[
ident:"type"
=
string:"\"search\""
]
::
ident:"-webkit-search-decoration"
space:" "
{
space:" "
-
ident:"webkit-appearance"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/**\n * Correct the text style of placeholders in Chrome, Edge, and Safari.\n */"
space:"\n"
::
ident:"-webkit-input-placeholder"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"inherit"
;
space:" "
ident:"opacity"
:
space:" "
number:"0.54"
;
space:" "
}
space:"\n"
comment:"/**\n * 1. Correct the inability to style clickable types in iOS and Safari.\n * 2. Change font properties to `inherit` in Safari.\n */"
space:"\n"
::
ident:"-webkit-file-upload-button"
space:" "
{
space:" "
-
ident:"webkit-appearance"
:
space:" "
ident:"button"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"font"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 2 */"
space:" "
}
space:"\n"
comment:"/* Modules */"
space:"\n"
comment:"/*\n  Box Sizing\n*/"
space:"\n"
ident:"html"
,
space:" "
ident:"body"
,
space:" "
ident:"div"
,
space:" "
ident:"article"
,
space:" "
ident:"section"
,
space:" "
ident:"main"
,
space:" "
ident:"footer"
,
space:" "
ident:"header"
,
space:" "
ident:"form"
,
space:" "
ident:"fieldset"
,
space:" "
ident:"pre"
,
space:"\n"
ident:"code"
,
space:" "
ident:"p"
,
space:" "
ident:"ul"
,
space:" "
ident:"ol"
,
space:" "
ident:"li"
,
space:" "
ident:"dl"
,
space:" "
ident:"dt"
,
space:" "
ident:"dd"
,
space:" "
ident:"textarea"
,
space:" "
ident:"input"
[
ident:"type"
=
string:"\"email\""
]
,
space:"\n"
ident:"input"
[
ident:"type"
=
string:"\"number\""
]
,
space:" "
ident:"input"
[
ident:"type"
=
string:"\"password\""
]
,
space:" "
ident:"input"
[
ident:"type"
=
string:"\"tel\""
]
,
space:"\n"
ident:"input"
[
ident:"type"
=
string:"\"text\""
]
,
space:" "
ident:"input"
[
ident:"type"
=
string:"\"url\""
]
,
space:" "
.
ident:"border-box"
space:" "
{
space:" "
ident:"box-sizing"
:
space:" "
ident:"border-box"
;
space:" "
}
space:"\n"
comment:"/*\n\n   BACKGROUND SIZE\n\n   Media Query Extensions:\n     -ns = not-small\n     -m  = medium\n     -l  = large\n\n*/"
space:"\n"
comment:"/*\n  Often used in combination with background image set as an inline style\n  on an html element.\n*/"
space:"\n"
.
ident:"cover"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"cover"
;
space:" "
}
space:"\n"
.
ident:"contain"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"contain"
;
space:" "
}
space:"\n"
comment:"/*\n\n   BORDER BASE\n\n   Legend\n\n   a = all\n   t = top\n   r = right\n   b = bottom\n   l = left\n\n*/"
space:"\n"
.
ident:"ba"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
.
ident:"bt"
space:" "
{
space:" "
ident:"border-top-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-top-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
.
ident:"br"
space:" "
{
space:" "
ident:"border-right-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-right-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
.
ident:"bb"
space:" "
{
space:" "
ident:"border-bottom-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-bottom-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
.
ident:"bl"
space:" "
{
space:" "
ident:"border-left-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-left-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
.
ident:"bn"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/*\n\n   Tachyons\n   COLOR VARIABLES\n\n   Grayscale\n   - Solids\n   - Transparencies\n*/"
space:"\n"
comment:"/*\n\n   BORDER COLORS\n\n*/"
space:"\n"
.
ident:"b--black"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"000"
;
space:" "
}
space:"\n"
.
ident:"b--near-black"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"111"
;
space:" "
}
space:"\n"
.
ident:"b--dark-gray"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"333"
;
space:" "
}
space:"\n"
.
ident:"b--mid-gray"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"555"
;
space:" "
}
space:"\n"
.
ident:"b--gray"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"777"
;
space:" "
}
space:"\n"
.
ident:"b--silver"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"999"
;
space:" "
}
space:"\n"
.
ident:"b--light-silver"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"aaa"
;
space:" "
}
space:"\n"
.
ident:"b--light-gray"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"eee"
;
space:" "
}
space:"\n"
.
ident:"b--near-white"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"f4f4f4"
;
space:" "
}
space:"\n"
.
ident:"b--white"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"fff"
;
space:" "
}
space:"\n"
.
ident:"b--white-90"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"9"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-80"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"8"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-70"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"7"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-60"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"6"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-50"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-40"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"4"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-30"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"3"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-20"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-10"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"1"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-05"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"0"
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-025"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"0"
number:"25"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--white-0125"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"0"
number:"125"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-90"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"9"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-80"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"8"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-70"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"7"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-60"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"6"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-50"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-40"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"4"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-30"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"3"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-20"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-10"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"1"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-05"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"0"
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-025"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"0"
number:"25"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--black-0125"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"0"
number:"125"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"b--dark-red"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"f00008"
;
space:" "
}
space:"\n"
.
ident:"b--red"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"ff3223"
;
space:" "
}
space:"\n"
.
ident:"b--orange"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"f3a801"
;
space:" "
}
space:"\n"
.
ident:"b--gold"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"f2c800"
;
space:" "
}
space:"\n"
.
ident:"b--yellow"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"ffde37"
;
space:" "
}
space:"\n"
.
ident:"b--purple"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"7d5da9"
;
space:" "
}
space:"\n"
.
ident:"b--light-purple"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"8d4f92"
;
space:" "
}
space:"\n"
.
ident:"b--hot-pink"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"d62288"
;
space:" "
}
space:"\n"
.
ident:"b--dark-pink"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"c64774"
;
space:" "
}
space:"\n"
.
ident:"b--pink"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"f49cc8"
;
space:" "
}
space:"\n"
.
ident:"b--dark-green"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"006C71"
;
space:" "
}
space:"\n"
.
ident:"b--green"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"41D69F"
;
space:" "
}
space:"\n"
.
ident:"b--navy"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"001b44"
;
space:" "
}
space:"\n"
.
ident:"b--dark-blue"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"00449e"
;
space:" "
}
space:"\n"
.
ident:"b--blue"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"357edd"
;
space:" "
}
space:"\n"
.
ident:"b--light-blue"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"96ccff"
;
space:" "
}
space:"\n"
.
ident:"b--lightest-blue"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"cdecff"
;
space:" "
}
space:"\n"
.
ident:"b--washed-blue"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"f6fffe"
;
space:" "
}
space:"\n"
.
ident:"b--washed-green"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"e8fdf5"
;
space:" "
}
space:"\n"
.
ident:"b--washed-yellow"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"fff8d5"
;
space:" "
}
space:"\n"
.
ident:"b--light-pink"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"efa4b8"
;
space:" "
}
space:"\n"
.
ident:"b--light-yellow"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"f3dd70"
;
space:" "
}
space:"\n"
.
ident:"b--light-red"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
#
ident:"ffd3c0"
;
space:" "
}
space:"\n"
.
ident:"b--transparent"
space:" "
{
space:" "
ident:"border-color"
:
space:" "
ident:"transparent"
;
space:" "
}
space:"\n"
comment:"/*\n\n   BORDER RADIUS\n\n   Base:\n     br   = border-radius\n\n   Modifiers:\n     0    = 0/none\n     1    = 1st step in scale\n     2    = 2nd step in scale\n     3    = 3rd step in scale\n     4    = 4th step in scale\n     -100 = 100%\n\n\n   Media Query Extensions:\n     -ns = not-small\n     -m  = medium\n     -l  = large\n\n*/"
space:"\n"
.
ident:"br0"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"br1"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"br2"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"br3"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"br4"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"br-100"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"br--bottom"
space:" "
{
space:" "
ident:"border-top-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-top-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"br--top"
space:" "
{
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"br--right"
space:" "
{
space:" "
ident:"border-top-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"br--left"
space:" "
{
space:" "
ident:"border-top-right-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/*\n\n   BORDER STYLES\n\n   Base:\n     bs = border-style\n\n   Modifiers:\n     none   = none\n     dotted = dotted\n     dashed = dashed\n     solid  = solid\n\n   Media Query Extensions:\n     -ns = not-small\n     -m  = medium\n     -l  = large\n\n */"
space:"\n"
.
ident:"b--dotted"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dotted"
;
space:" "
}
space:"\n"
.
ident:"b--dashed"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dashed"
;
space:" "
}
space:"\n"
.
ident:"b--solid"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
}
space:"\n"
.
ident:"b--none"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n   BORDER WIDTHS\n\n   Base:\n     bw = border-width\n\n   Modifiers:\n     0 = 0 width border\n     1 = 1st step in border-width scale\n     2 = 2nd step in border-width scale\n     3 = 3rd step in border-width scale\n     4 = 4th step in border-width scale\n     5 = 5th step in border-width scale\n\n   Media Query Extensions:\n     -ns = not-small\n     -m  = medium\n     -l  = large\n\n*/"
space:"\n"
.
ident:"bw0"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"bw1"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bw2"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bw3"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bw4"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bw5"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bt-0"
space:" "
{
space:" "
ident:"border-top-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"br-0"
space:" "
{
space:" "
ident:"border-right-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"bb-0"
space:" "
{
space:" "
ident:"border-bottom-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"bl-0"
space:" "
{
space:" "
ident:"border-left-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/*\n\n  BOX-SHADOW\n\n  Media Query Extensions:\n   -ns = not-small\n   -m  = medium\n   -l  = large\n\n */"
space:"\n"
.
ident:"shadow-1"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"shadow-2"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"shadow-3"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"shadow-4"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"shadow-5"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"4"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
comment:"/*\n\n   CODE\n\n*/"
space:"\n"
.
ident:"pre"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"auto"
;
space:" "
ident:"overflow-y"
:
space:" "
ident:"hidden"
;
space:" "
ident:"overflow"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
comment:"/*\n\n   COORDINATES\n\n   Use in combination with the position module.\n\n*/"
space:"\n"
.
ident:"top-0"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"right-0"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"bottom-0"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"left-0"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"top-1"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"right-1"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bottom-1"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"left-1"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"top-2"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"right-2"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bottom-2"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"left-2"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"top--1"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"right--1"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bottom--1"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"left--1"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"top--2"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"right--2"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"bottom--2"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"left--2"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"absolute--fill"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/*\n\n   CLEARFIX\n\n*/"
space:"\n"
comment:"/* Nicolas Gallaghers Clearfix solution\n   Ref: http://nicolasgallagher.com/micro-clearfix-hack/ */"
space:"\n"
.
ident:"cf"
:
ident:"before"
,
space:" "
.
ident:"cf"
:
ident:"after"
space:" "
{
space:" "
ident:"content"
:
space:" "
string:"\" \""
;
space:" "
ident:"display"
:
space:" "
ident:"table"
;
space:" "
}
space:"\n"
.
ident:"cf"
:
ident:"after"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"both"
;
space:" "
}
space:"\n"
.
ident:"cf"
space:" "
{
space:" "
*
ident:"zoom"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
.
ident:"cl"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
.
ident:"cr"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
.
ident:"cb"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"both"
;
space:" "
}
space:"\n"
.
ident:"cn"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n   DISPLAY\n\n   Base:\n    d = display\n\n   Modifiers:\n    n     = none\n    b     = block\n    ib    = inline-block\n    it    = inline-table\n    t     = table\n    tc    = table-cell\n    tr    = table-row\n    tcol  = table-column\n    tcolg = table-column-group\n\n   Media Query Extensions:\n     -ns = not-small\n     -m  = medium\n     -l  = large\n\n*/"
space:"\n"
.
ident:"dn"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
.
ident:"di"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
.
ident:"db"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"block"
;
space:" "
}
space:"\n"
.
ident:"dib"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-block"
;
space:" "
}
space:"\n"
.
ident:"dit"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-table"
;
space:" "
}
space:"\n"
.
ident:"dt"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table"
;
space:" "
}
space:"\n"
.
ident:"dtc"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-cell"
;
space:" "
}
space:"\n"
.
ident:"dt-row"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row"
;
space:" "
}
space:"\n"
.
ident:"dt-row-group"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row-group"
;
space:" "
}
space:"\n"
.
ident:"dt-column"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column"
;
space:" "
}
space:"\n"
.
ident:"dt-column-group"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column-group"
;
space:" "
}
space:"\n"
comment:"/*\n  This will set table to full width and then\n  all cells will be equal width\n*/"
space:"\n"
.
ident:"dt--fixed"
space:" "
{
space:" "
ident:"table-layout"
:
space:" "
ident:"fixed"
;
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
comment:"/*\n\nFLEXBOX\n\n */"
space:"\n"
.
ident:"flex"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"flex"
;
space:" "
}
space:"\n"
comment:"/* 1. Fix for Chrome 44 bug. https://code.google.com/p/chromium/issues/detail?id=506893 */"
space:"\n"
.
ident:"flex-auto"
space:" "
{
space:" "
ident:"flex"
:
space:" "
number:"1"
space:" "
number:"1"
space:" "
ident:"auto"
;
space:" "
ident:"min-width"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"min-height"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
}
space:"\n"
.
ident:"flex-none"
space:" "
{
space:" "
ident:"flex"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
.
ident:"flex-column"
space:" "
{
space:" "
ident:"flex-direction"
:
space:" "
ident:"column"
;
space:" "
}
space:"\n"
.
ident:"flex-wrap"
space:" "
{
space:" "
ident:"flex-wrap"
:
space:" "
ident:"wrap"
;
space:" "
}
space:"\n"
.
ident:"items-start"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
.
ident:"items-end"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
.
ident:"items-center"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
.
ident:"items-baseline"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
.
ident:"items-stretch"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
.
ident:"self-start"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
.
ident:"self-end"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
.
ident:"self-center"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
.
ident:"self-baseline"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
.
ident:"self-stretch"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
.
ident:"justify-start"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
.
ident:"justify-end"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
.
ident:"justify-center"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
.
ident:"justify-between"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
.
ident:"justify-around"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
.
ident:"content-start"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
.
ident:"content-end"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
.
ident:"content-center"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
.
ident:"content-between"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
.
ident:"content-around"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
.
ident:"content-stretch"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
.
ident:"order-0"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"order-1"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
.
ident:"order-2"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"2"
;
space:" "
}
space:"\n"
.
ident:"order-3"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"3"
;
space:" "
}
space:"\n"
.
ident:"order-4"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"4"
;
space:" "
}
space:"\n"
.
ident:"order-5"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"5"
;
space:" "
}
space:"\n"
.
ident:"order-6"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"6"
;
space:" "
}
space:"\n"
.
ident:"order-7"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"7"
;
space:" "
}
space:"\n"
.
ident:"order-8"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"8"
;
space:" "
}
space:"\n"
.
ident:"order-last"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"99999"
;
space:" "
}
space:"\n"
comment:"/* Media Query Variables */"
space:"\n"
comment:"/*\n\n   FLOATS\n\n   1. Floated elements are automatically rendered as block level elements.\n      Setting floats to display inline will fix the double margin bug in\n      ie6. You know... just in case.\n\n   2. Don't forget to clearfix your floats with .cf\n\n   Base:\n     f = float\n\n   Modifiers:\n     l = left\n     r = right\n     n = none\n\n   Media Query Extensions:\n     -ns = not-small\n     -m  = medium\n     -l  = large\n\n*/"
space:"\n"
.
ident:"fl"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"left"
;
space:" "
ident:"_display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
.
ident:"fr"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"right"
;
space:" "
ident:"_display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
.
ident:"fn"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n   FONT FAMILY GROUPS\n\n*/"
space:"\n"
.
ident:"sans-serif"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
-
ident:"apple-system"
,
space:" "
ident:"BlinkMacSystemFont"
,
space:" "
string:"'avenir next'"
,
space:" "
ident:"avenir"
,
space:" "
ident:"helvetica"
,
space:" "
string:"'helvetica neue'"
,
space:" "
ident:"ubuntu"
,
space:" "
ident:"roboto"
,
space:" "
ident:"noto"
,
space:" "
string:"'segoe ui'"
,
space:" "
ident:"arial"
,
space:" "
ident:"sans-serif"
;
space:" "
}
space:"\n"
.
ident:"serif"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"georgia"
,
space:" "
ident:"times"
,
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
.
ident:"system-sans-serif"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"sans-serif"
;
space:" "
}
space:"\n"
.
ident:"system-serif"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
comment:"/* Monospaced Typefaces (for code) */"
space:"\n"
comment:"/* From http://cssfontstack.com */"
space:"\n"
ident:"code"
,
space:" "
.
ident:"code"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"Consolas"
,
space:" "
ident:"monaco"
,
space:" "
ident:"monospace"
;
space:" "
}
space:"\n"
comment:"/* Sans-Serif Typefaces */"
space:"\n"
.
ident:"helvetica"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
string:"'helvetica neue'"
,
space:" "
ident:"helvetica"
,
space:" "
ident:"sans-serif"
;
space:" "
}
space:"\n"
.
ident:"avenir"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
string:"'avenir next'"
,
space:" "
ident:"avenir"
,
space:" "
ident:"sans-serif"
;
space:" "
}
space:"\n"
comment:"/* Serif Typefaces */"
space:"\n"
.
ident:"georgia"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"georgia"
,
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
.
ident:"times"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"times"
,
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
.
ident:"bodoni"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
string:"\"Bodoni MT\""
,
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
.
ident:"calisto"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
string:"\"Calisto MT\""
,
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
.
ident:"garamond"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"garamond"
,
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
.
ident:"baskerville"
space:" "
{
space:" "
ident:"font-family"
:
space:" "
ident:"garamond"
,
space:" "
ident:"serif"
;
space:" "
}
space:"\n"
comment:"/*\n\n   FONT STYLE\n\n*/"
space:"\n"
.
ident:"i"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"italic"
;
space:" "
}
space:"\n"
.
ident:"fs-normal"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
comment:"/*\n\n   FONT WEIGHT\n\n*/"
space:"\n"
.
ident:"normal"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
.
ident:"b"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"bold"
;
space:" "
}
space:"\n"
.
ident:"fw1"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"100"
;
space:" "
}
space:"\n"
.
ident:"fw2"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"200"
;
space:" "
}
space:"\n"
.
ident:"fw3"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"300"
;
space:" "
}
space:"\n"
.
ident:"fw4"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"400"
;
space:" "
}
space:"\n"
.
ident:"fw5"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"500"
;
space:" "
}
space:"\n"
.
ident:"fw6"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"600"
;
space:" "
}
space:"\n"
.
ident:"fw7"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"700"
;
space:" "
}
space:"\n"
.
ident:"fw8"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"800"
;
space:" "
}
space:"\n"
.
ident:"fw9"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"900"
;
space:" "
}
space:"\n"
comment:"/*\n\n   FORMS\n\n*/"
space:"\n"
.
ident:"input-reset"
space:" "
{
space:" "
-
ident:"webkit-appearance"
:
space:" "
ident:"none"
;
space:" "
-
ident:"moz-appearance"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n   HEIGHTS\n\n*/"
space:"\n"
comment:"/* Height Scale */"
space:"\n"
.
ident:"h1"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"h2"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"h3"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"h4"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"h5"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
comment:"/* Height Percentages */"
space:"\n"
.
ident:"h-25"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"h-50"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"h-75"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"h-100"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
comment:"/* String Properties */"
space:"\n"
.
ident:"h-auto"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
.
ident:"h-inherit"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"inherit"
;
space:" "
}
space:"\n"
comment:"/*\n\n   LETTER SPACING\n\n*/"
space:"\n"
.
ident:"tracked"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"1"
ident:"em"
;
space:" "
}
space:"\n"
.
ident:"tracked-tight"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
-
.
number:"0"
number:"5"
ident:"em"
;
space:" "
}
space:"\n"
.
ident:"tracked-mega"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"25"
ident:"em"
;
space:" "
}
space:"\n"
comment:"/*\n\n   LINE HEIGHT / LEADING\n\n*/"
space:"\n"
.
ident:"lh-solid"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
.
ident:"lh-title"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.3"
;
space:" "
}
space:"\n"
.
ident:"lh-copy"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.6"
;
space:" "
}
space:"\n"
comment:"/*\n\n   LINKS\n\n*/"
space:"\n"
.
ident:"link"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"none"
;
space:" "
ident:"transition"
:
space:" "
ident:"color"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"link"
:
ident:"link"
,
space:" "
.
ident:"link"
:
ident:"visited"
space:" "
{
space:" "
ident:"transition"
:
space:" "
ident:"color"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"link"
:
ident:"hover"
space:" "
{
space:" "
ident:"transition"
:
space:" "
ident:"color"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"link"
:
ident:"active"
space:" "
{
space:" "
ident:"transition"
:
space:" "
ident:"color"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"link"
:
ident:"focus"
space:" "
{
space:" "
ident:"transition"
:
space:" "
ident:"color"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
comment:"/*\n\n   LISTS\n\n*/"
space:"\n"
.
ident:"list"
space:" "
{
space:" "
ident:"list-style-type"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n   MAX WIDTHS\n\n*/"
space:"\n"
comment:"/* Max Width Percentages */"
space:"\n"
.
ident:"mw-100"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
comment:"/* Max Width Scale */"
space:"\n"
.
ident:"mw1"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw2"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw3"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw4"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw5"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw6"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"32"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw7"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"48"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw8"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"64"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mw9"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"96"
ident:"rem"
;
space:" "
}
space:"\n"
comment:"/* Max Width String Properties */"
space:"\n"
.
ident:"mw-none"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n   WIDTHS\n\n   Base:\n     w = width\n\n   Modifiers\n     1 = 1st step in width scale\n     2 = 2nd step in width scale\n     3 = 3rd step in width scale\n     4 = 4th step in width scale\n     5 = 5th step in width scale\n\n     -10  = literal value 10%\n     -20  = literal value 20%\n     -25  = literal value 25%\n     -33  = literal value 33%\n     -34  = literal value 34%\n     -40  = literal value 40%\n     -50  = literal value 50%\n     -60  = literal value 60%\n     -75  = literal value 75%\n     -80  = literal value 80%\n     -100 = literal value 100%\n\n     -auto  = string value auto\n\n\n   Media Query Extensions:\n     -ns = not-small\n     -m  = medium\n     -l  = large\n\n*/"
space:"\n"
comment:"/* Width Scale */"
space:"\n"
.
ident:"w1"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"w2"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"w3"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"w4"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"w5"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"w-10"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"10"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-20"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"20"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-25"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-33"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"33"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-34"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"34"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-40"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"40"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-50"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-60"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"60"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-75"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-80"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"80"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-100"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"w-auto"
space:" "
{
space:" "
ident:"width"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
comment:"/*\n\n    OVERFLOW\n\n */"
space:"\n"
.
ident:"overflow-visible"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
.
ident:"overflow-hidden"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
.
ident:"overflow-scroll"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
.
ident:"overflow-auto"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
.
ident:"overflow-x-visible"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
.
ident:"overflow-x-hidden"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
.
ident:"overflow-x-scroll"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
.
ident:"overflow-x-auto"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
.
ident:"overflow-y-visible"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
.
ident:"overflow-y-hidden"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
.
ident:"overflow-y-scroll"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
.
ident:"overflow-y-auto"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
comment:"/*\n\n    POSITIONING\n\n */"
space:"\n"
.
ident:"static"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"static"
;
space:" "
}
space:"\n"
.
ident:"relative"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"relative"
;
space:" "
}
space:"\n"
.
ident:"absolute"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"absolute"
;
space:" "
}
space:"\n"
.
ident:"fixed"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
;
space:" "
}
space:"\n"
comment:"/*\n\n  Opacity\n\n*/"
space:"\n"
.
ident:"o-100"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
.
ident:"o-90"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"9"
;
space:" "
}
space:"\n"
.
ident:"o-80"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"8"
;
space:" "
}
space:"\n"
.
ident:"o-70"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"7"
;
space:" "
}
space:"\n"
.
ident:"o-60"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"6"
;
space:" "
}
space:"\n"
.
ident:"o-50"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"5"
;
space:" "
}
space:"\n"
.
ident:"o-40"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"4"
;
space:" "
}
space:"\n"
.
ident:"o-30"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"3"
;
space:" "
}
space:"\n"
.
ident:"o-20"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"2"
;
space:" "
}
space:"\n"
.
ident:"o-10"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"1"
;
space:" "
}
space:"\n"
.
ident:"o-05"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"0"
number:"5"
;
space:" "
}
space:"\n"
.
ident:"o-025"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"0"
number:"25"
;
space:" "
}
space:"\n"
.
ident:"o-0"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
comment:"/*\n\n   COLOR VARIABLES\n\n   Variables to set colors for\n   color, background-color, and border-color\n\n*/"
space:"\n"
comment:"/* variables */"
space:"\n"
comment:"/*\n\n   SKINS\n\n*/"
space:"\n"
comment:"/* Text colors */"
space:"\n"
.
ident:"black-90"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"9"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-80"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"8"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-70"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"7"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-60"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"6"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-50"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-40"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"4"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-30"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"3"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-20"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-10"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"1"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black-05"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"0"
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-90"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"9"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-80"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"8"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-70"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"7"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-60"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"6"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-50"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-40"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"4"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-30"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"3"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-20"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"white-10"
space:" "
{
space:" "
ident:"color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"1"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"black"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"000"
;
space:" "
}
space:"\n"
.
ident:"near-black"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"111"
;
space:" "
}
space:"\n"
.
ident:"dark-gray"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"333"
;
space:" "
}
space:"\n"
.
ident:"mid-gray"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"555"
;
space:" "
}
space:"\n"
.
ident:"gray"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"777"
;
space:" "
}
space:"\n"
.
ident:"silver"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"999"
;
space:" "
}
space:"\n"
.
ident:"light-silver"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"aaa"
;
space:" "
}
space:"\n"
.
ident:"moon-gray"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"ccc"
;
space:" "
}
space:"\n"
.
ident:"light-gray"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"eee"
;
space:" "
}
space:"\n"
.
ident:"near-white"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f4f4f4"
;
space:" "
}
space:"\n"
.
ident:"white"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"fff"
;
space:" "
}
space:"\n"
.
ident:"dark-red"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f00008"
;
space:" "
}
space:"\n"
.
ident:"red"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"ff3223"
;
space:" "
}
space:"\n"
.
ident:"orange"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f3a801"
;
space:" "
}
space:"\n"
.
ident:"gold"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f2c800"
;
space:" "
}
space:"\n"
.
ident:"yellow"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"ffde37"
;
space:" "
}
space:"\n"
.
ident:"purple"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"7d5da9"
;
space:" "
}
space:"\n"
.
ident:"light-purple"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"8d4f92"
;
space:" "
}
space:"\n"
.
ident:"hot-pink"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"d62288"
;
space:" "
}
space:"\n"
.
ident:"dark-pink"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"c64774"
;
space:" "
}
space:"\n"
.
ident:"pink"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f49cc8"
;
space:" "
}
space:"\n"
.
ident:"dark-green"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"006C71"
;
space:" "
}
space:"\n"
.
ident:"green"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"41D69F"
;
space:" "
}
space:"\n"
.
ident:"navy"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"001b44"
;
space:" "
}
space:"\n"
.
ident:"dark-blue"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"00449e"
;
space:" "
}
space:"\n"
.
ident:"blue"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"357edd"
;
space:" "
}
space:"\n"
.
ident:"light-blue"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"96ccff"
;
space:" "
}
space:"\n"
.
ident:"lightest-blue"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"cdecff"
;
space:" "
}
space:"\n"
.
ident:"washed-blue"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f6fffe"
;
space:" "
}
space:"\n"
.
ident:"washed-green"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"e8fdf5"
;
space:" "
}
space:"\n"
.
ident:"washed-yellow"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"fff8d5"
;
space:" "
}
space:"\n"
.
ident:"light-pink"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"efa4b8"
;
space:" "
}
space:"\n"
.
ident:"light-yellow"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f3dd70"
;
space:" "
}
space:"\n"
.
ident:"light-red"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"ffd3c0"
;
space:" "
}
space:"\n"
.
ident:"bg-black-90"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"9"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-80"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"8"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-70"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"7"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-60"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"6"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-50"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-40"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"4"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-30"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"3"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-20"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-10"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"1"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-black-05"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
.
number:"0"
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-90"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"9"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-80"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"8"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-70"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"7"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-60"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"6"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-50"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"5"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-40"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"4"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-30"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"3"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-20"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"2"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"bg-white-10"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"rgba"
(
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
number:"255"
,
space:" "
.
number:"1"
space:" "
)
;
space:" "
}
space:"\n"
comment:"/* Background colors */"
space:"\n"
.
ident:"bg-black"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"000"
;
space:" "
}
space:"\n"
.
ident:"bg-near-black"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"111"
;
space:" "
}
space:"\n"
.
ident:"bg-dark-gray"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"333"
;
space:" "
}
space:"\n"
.
ident:"bg-mid-gray"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"555"
;
space:" "
}
space:"\n"
.
ident:"bg-gray"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"777"
;
space:" "
}
space:"\n"
.
ident:"bg-silver"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"999"
;
space:" "
}
space:"\n"
.
ident:"bg-light-silver"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"aaa"
;
space:" "
}
space:"\n"
.
ident:"bg-moon-gray"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ccc"
;
space:" "
}
space:"\n"
.
ident:"bg-light-gray"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"eee"
;
space:" "
}
space:"\n"
.
ident:"bg-near-white"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f4f4f4"
;
space:" "
}
space:"\n"
.
ident:"bg-white"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"fff"
;
space:" "
}
space:"\n"
.
ident:"bg-transparent"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"transparent"
;
space:" "
}
space:"\n"
.
ident:"bg-dark-red"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f00008"
;
space:" "
}
space:"\n"
.
ident:"bg-red"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ff3223"
;
space:" "
}
space:"\n"
.
ident:"bg-orange"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f3a801"
;
space:" "
}
space:"\n"
.
ident:"bg-gold"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f2c800"
;
space:" "
}
space:"\n"
.
ident:"bg-yellow"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ffde37"
;
space:" "
}
space:"\n"
.
ident:"bg-purple"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"7d5da9"
;
space:" "
}
space:"\n"
.
ident:"bg-light-purple"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"8d4f92"
;
space:" "
}
space:"\n"
.
ident:"bg-hot-pink"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"d62288"
;
space:" "
}
space:"\n"
.
ident:"bg-dark-pink"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"c64774"
;
space:" "
}
space:"\n"
.
ident:"bg-pink"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f49cc8"
;
space:" "
}
space:"\n"
.
ident:"bg-dark-green"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"006C71"
;
space:" "
}
space:"\n"
.
ident:"bg-green"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"41D69F"
;
space:" "
}
space:"\n"
.
ident:"bg-navy"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"001b44"
;
space:" "
}
space:"\n"
.
ident:"bg-dark-blue"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"00449e"
;
space:" "
}
space:"\n"
.
ident:"bg-blue"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"357edd"
;
space:" "
}
space:"\n"
.
ident:"bg-light-blue"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"96ccff"
;
space:" "
}
space:"\n"
.
ident:"bg-lightest-blue"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"cdecff"
;
space:" "
}
space:"\n"
.
ident:"bg-washed-blue"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f6fffe"
;
space:" "
}
space:"\n"
.
ident:"bg-washed-green"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"e8fdf5"
;
space:" "
}
space:"\n"
.
ident:"bg-washed-yellow"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"fff8d5"
;
space:" "
}
space:"\n"
.
ident:"bg-light-pink"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"efa4b8"
;
space:" "
}
space:"\n"
.
ident:"bg-light-yellow"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f3dd70"
;
space:" "
}
space:"\n"
.
ident:"bg-light-red"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ffd3c0"
;
space:" "
}
space:"\n"
comment:"/* Skins for specific pseudoclasses */"
space:"\n"
.
ident:"hover-black"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"000"
;
space:" "
}
space:"\n"
.
ident:"hover-near-black"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"111"
;
space:" "
}
space:"\n"
.
ident:"hover-dark-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"333"
;
space:" "
}
space:"\n"
.
ident:"hover-mid-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"555"
;
space:" "
}
space:"\n"
.
ident:"hover-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"777"
;
space:" "
}
space:"\n"
.
ident:"hover-silver"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"999"
;
space:" "
}
space:"\n"
.
ident:"hover-light-silver"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"aaa"
;
space:" "
}
space:"\n"
.
ident:"hover-moon-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"ccc"
;
space:" "
}
space:"\n"
.
ident:"hover-light-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"eee"
;
space:" "
}
space:"\n"
.
ident:"hover-near-white"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"f4f4f4"
;
space:" "
}
space:"\n"
.
ident:"hover-white"
:
ident:"hover"
space:" "
{
space:" "
ident:"color"
:
space:" "
#
ident:"fff"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-black"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"000"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-near-black"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"111"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-dark-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"333"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-mid-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"555"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"777"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-silver"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"999"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-light-silver"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"aaa"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-moon-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ccc"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-light-gray"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"eee"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-near-white"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f4f4f4"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-white"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"fff"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-transparent"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
ident:"transparent"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-dark-red"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f00008"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-red"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ff3223"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-orange"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f3a801"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-gold"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f2c800"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-yellow"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ffde37"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-purple"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"7d5da9"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-light-purple"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"8d4f92"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-hot-pink"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"d62288"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-dark-pink"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"c64774"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-pink"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f49cc8"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-dark-green"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"006C71"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-green"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"41D69F"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-navy"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"001b44"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-dark-blue"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"00449e"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-blue"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"357edd"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-light-blue"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"96ccff"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-lightest-blue"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"cdecff"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-washed-blue"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f6fffe"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-washed-green"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"e8fdf5"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-washed-yellow"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"fff8d5"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-light-pink"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"efa4b8"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-light-yellow"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f3dd70"
;
space:" "
}
space:"\n"
.
ident:"hover-bg-light-red"
:
ident:"hover"
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ffd3c0"
;
space:" "
}
space:"\n"
comment:"/* Variables */"
space:"\n"
comment:"/* Spacing Scale - based on a ratio of 1:2 */"
space:"\n"
comment:"/* Media Queries */"
space:"\n"
comment:"/*\n   SPACING\n\n   An eight step powers of two scale ranging from 0 to 16rem.\n   Namespaces are composable and thus highly grockable - check the legend below\n\n   Legend:\n\n   p = padding\n   m = margin\n\n   a = all\n   h = horizontal\n   v = vertical\n   t = top\n   r = right\n   b = bottom\n   l = left\n\n   0 = none\n   1 = 1st step in spacing scale\n   2 = 2nd step in spacing scale\n   3 = 3rd step in spacing scale\n   4 = 4th step in spacing scale\n   5 = 5th step in spacing scale\n   6 = 6th step in spacing scale\n   7 = 7th step in spacing scale\n\n*/"
space:"\n"
.
ident:"pa0"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"pa1"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pa2"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pa3"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pa4"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pa5"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pa6"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pa7"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pl0"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"pl1"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pl2"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pl3"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pl4"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pl5"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pl6"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pl7"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pr0"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"pr1"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pr2"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pr3"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pr4"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pr5"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pr6"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pr7"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pb0"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"pb1"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pb2"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pb3"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pb4"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pb5"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pb6"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pb7"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pt0"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"pt1"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pt2"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pt3"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pt4"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pt5"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pt6"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pt7"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pv0"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"pv1"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pv2"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pv3"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pv4"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pv5"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pv6"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"pv7"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ph0"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"ph1"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ph2"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ph3"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ph4"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ph5"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ph6"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ph7"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ma0"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"ma1"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ma2"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ma3"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ma4"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ma5"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ma6"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ma7"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ml0"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"ml1"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ml2"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ml3"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ml4"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ml5"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ml6"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"ml7"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mr0"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"mr1"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mr2"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mr3"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mr4"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mr5"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mr6"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mr7"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mb0"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"mb1"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mb2"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mb3"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mb4"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mb5"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mb6"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mb7"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mt0"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"mt1"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mt2"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mt3"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mt4"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mt5"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mt6"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mt7"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mv0"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"mv1"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mv2"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mv3"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mv4"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mv5"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mv6"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mv7"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mh0"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"mh1"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mh2"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mh3"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mh4"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mh5"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mh6"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"mh7"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
comment:"/*\n\n  TABLES\n\n*/"
space:"\n"
.
ident:"collapse"
space:" "
{
space:" "
ident:"border-collapse"
:
space:" "
ident:"collapse"
;
space:" "
ident:"border-spacing"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"striped--moon-gray"
:
ident:"nth-child"
(
ident:"odd"
)
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"aaa"
;
space:" "
}
space:"\n"
.
ident:"striped--moon-gray"
:
ident:"nth-child"
(
ident:"odd"
)
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"ccc"
;
space:" "
}
space:"\n"
.
ident:"striped--light-gray"
:
ident:"nth-child"
(
ident:"odd"
)
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"eee"
;
space:" "
}
space:"\n"
.
ident:"striped--near-white"
:
ident:"nth-child"
(
ident:"odd"
)
space:" "
{
space:" "
ident:"background-color"
:
space:" "
#
ident:"f4f4f4"
;
space:" "
}
space:"\n"
comment:"/*\n\n   TEXT DECORATION\n\n*/"
space:"\n"
.
ident:"strike"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"line-through"
;
space:" "
}
space:"\n"
.
ident:"underline"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"underline"
;
space:" "
}
space:"\n"
.
ident:"no-underline"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n  TEXT ALIGN\n\n*/"
space:"\n"
.
ident:"tl"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
.
ident:"tr"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
.
ident:"tc"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
comment:"/*\n\n   TEXT TRANSFORM\n\n*/"
space:"\n"
.
ident:"ttc"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"capitalize"
;
space:" "
}
space:"\n"
.
ident:"ttl"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"lowercase"
;
space:" "
}
space:"\n"
.
ident:"ttu"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"uppercase"
;
space:" "
}
space:"\n"
.
ident:"ttn"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
comment:"/*\n\n   TYPE SCALE\n\n*/"
space:"\n"
comment:"/* For Hero Titles */"
space:"\n"
.
ident:"f-6"
,
space:" "
.
ident:"f-headline"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"6"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"f-5"
,
space:" "
.
ident:"f-subheadline"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
comment:"/* Type Scale */"
space:"\n"
.
ident:"f1"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"3"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"f2"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"2.25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"f3"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.5"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"f4"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.25"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"f5"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
.
ident:"f6"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
.
number:"875"
ident:"rem"
;
space:" "
}
space:"\n"
comment:"/*\n\n   TYPOGRAPHY\n\n*/"
space:"\n"
comment:"/* Measure is limited to ~66 characters */"
space:"\n"
.
ident:"measure"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"30"
ident:"em"
;
space:" "
}
space:"\n"
comment:"/* Measure is limited to ~80 characters */"
space:"\n"
.
ident:"measure-wide"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"34"
ident:"em"
;
space:" "
}
space:"\n"
comment:"/* Measure is limited to ~45 characters */"
space:"\n"
.
ident:"measure-narrow"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"20"
ident:"em"
;
space:" "
}
space:"\n"
comment:"/* Book paragraph style - paragraphs are indented with no vertical spacing. */"
space:"\n"
.
ident:"indent"
space:" "
{
space:" "
ident:"text-indent"
:
space:" "
number:"1"
ident:"em"
;
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
.
ident:"small-caps"
space:" "
{
space:" "
ident:"font-variant"
:
space:" "
ident:"small-caps"
;
space:" "
}
space:"\n"
comment:"/* Combine this class with a width to truncate text (or just leave as is to truncate at width of containing element. */"
space:"\n"
.
ident:"truncate"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
ident:"text-overflow"
:
space:" "
ident:"ellipsis"
;
space:" "
}
space:"\n"
comment:"/*\n\n   UTILITIES\n\n*/"
space:"\n"
comment:"/* This is for fluid media that is embedded from third party sites like youtube, vimeo etc.\n * Wrap the outer element in aspect-ratio and then extend it with the desired ratio i.e\n * Make sure there are no height and width attributes on the embedded media.\n * Adapted from: https://github.com/suitcss/components-flex-embed\n *\n * Example:\n *\n * <div class=\"aspect-ratio aspect-ratio--16x9\">\n *  <iframe class=\"aspect-ratio--object\"></iframe>\n * </div>\n *\n * */"
space:"\n"
.
ident:"aspect-ratio"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"0"
;
space:" "
ident:"position"
:
space:" "
ident:"relative"
;
space:" "
}
space:"\n"
.
ident:"aspect-ratio--16x9"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"56.25"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"aspect-ratio--4x3"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"aspect-ratio--8x5"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"62.5"
percent:"%"
;
space:" "
}
space:"\n"
.
ident:"aspect-ratio--object"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"absolute"
;
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
ident:"height"
:
space:" "
number:"100"
percent:"%"
;
space:" "
ident:"z-index"
:
space:" "
number:"100"
;
space:" "
}
space:"\n"
.
ident:"overflow-container"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
.
ident:"center"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
ident:"auto"
;
space:" "
ident:"margin-left"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
comment:"/*\n\n   VISIBILITY\n\n*/"
space:"\n"
comment:"/*\n    Text that is hidden but accessible\n    Ref: http://snook.ca/archives/html_and_css/hiding-content-for-accessibility\n*/"
space:"\n"
.
ident:"clip"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
space:" "
!
ident:"important"
;
space:" "
ident:"_position"
:
space:" "
ident:"absolute"
space:" "
!
ident:"important"
;
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
comment:"/* IE6, IE7 */"
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
}
space:"\n"
comment:"/*\n\n   WHITE SPACE\n\n*/"
space:"\n"
.
ident:"ws-normal"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
.
ident:"nowrap"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
}
space:"\n"
.
ident:"pre"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"pre"
;
space:" "
}
space:"\n"
comment:"/*\n\n   VERTICAL ALIGN\n\n*/"
space:"\n"
.
ident:"v-base"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
.
ident:"v-mid"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"middle"
;
space:" "
}
space:"\n"
.
ident:"v-top"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"top"
;
space:" "
}
space:"\n"
.
ident:"v-btm"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"bottom"
;
space:" "
}
space:"\n"
comment:"/*\n\n  HOVER EFFECTS\n\n\n*/"
space:"\n"
comment:"/*\n\n  Dim element on hover by adding the dim class.\n\n*/"
space:"\n"
.
ident:"dim"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
number:"1"
;
space:" "
ident:"transition"
:
space:" "
ident:"opacity"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"dim"
:
ident:"hover"
,
space:" "
.
ident:"dim"
:
ident:"focus"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"5"
;
space:" "
ident:"transition"
:
space:" "
ident:"opacity"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"dim"
:
ident:"active"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
.
number:"8"
;
space:" "
ident:"transition"
:
space:" "
ident:"opacity"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-out"
;
space:" "
}
space:"\n"
comment:"/*\n\n  Hide child & reveal on hover:\n\n  Put the hide-child class on a parent element and any nested element with the\n  child class will be hidden and displayed on hover or focus.\n\n  <div class=\"hide-child\">\n    <div class=\"child\"> Hidden until hover or focus </div>\n    <div class=\"child\"> Hidden until hover or focus </div>\n    <div class=\"child\"> Hidden until hover or focus </div>\n    <div class=\"child\"> Hidden until hover or focus </div>\n  </div>\n*/"
space:"\n"
.
ident:"hide-child"
space:" "
.
ident:"child"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
number:"0"
;
space:" "
ident:"transition"
:
space:" "
ident:"opacity"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"hide-child"
:
ident:"hover"
space:"  "
.
ident:"child"
,
space:" "
.
ident:"hide-child"
:
ident:"focus"
space:"  "
.
ident:"child"
,
space:" "
.
ident:"hide-child"
:
ident:"active"
space:" "
.
ident:"child"
space:" "
{
space:" "
ident:"opacity"
:
space:" "
number:"1"
;
space:" "
ident:"transition"
:
space:" "
ident:"opacity"
space:" "
.
number:"15"
ident:"s"
space:" "
ident:"ease-in"
;
space:" "
}
space:"\n"
.
ident:"underline-hover"
:
ident:"hover"
,
space:" "
.
ident:"underline-hover"
:
ident:"focus"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"underline"
;
space:" "
}
space:"\n"
comment:"/* Can combine this with overflow-hidden to make background images grow on hover\n * even if you are using background-size: cover */"
space:"\n"
.
ident:"grow"
space:" "
{
space:" "
ident:"transition"
:
space:" "
ident:"transform"
space:" "
.
number:"2"
ident:"s"
;
space:" "
}
space:"\n"
.
ident:"grow"
:
ident:"hover"
space:" "
{
space:" "
ident:"transform"
:
space:" "
ident:"scale"
(
space:" "
number:"1.05"
space:" "
)
;
space:" "
}
space:"\n"
.
ident:"grow-large"
space:" "
{
space:" "
ident:"transition"
:
space:" "
ident:"transform"
space:" "
.
number:"2"
ident:"s"
;
space:" "
}
space:"\n"
.
ident:"grow-large"
:
ident:"hover"
space:" "
{
space:" "
ident:"transform"
:
space:" "
ident:"scale"
(
space:" "
number:"1.2"
space:" "
)
;
space:" "
}
space:"\n"
comment:"/* Add pointer on hover */"
space:"\n"
.
ident:"pointer"
:
ident:"hover"
space:" "
{
space:" "
ident:"cursor"
:
space:" "
ident:"pointer"
;
space:" "
}
space:"\n"
comment:"/*\n\n  STYLES\n\n  Add custom styles here.\n\n*/"
space:"\n"
comment:"/* Import media queries and variables at end as this will allow you to customize them\n * and override what is currently declared in each module.\n */"
space:"\n"
comment:"/*\n\n   Tachyons\n   COLOR VARIABLES\n\n   Grayscale\n   - Solids\n   - Transparencies\n*/"
space:"\n"
comment:"/*\n\n  CUSTOM MEDIA QUERIES\n\n  Media query values can be changed to fit your own content.\n  There are no magic bullets when it comes to media query width values.\n  They should be declared in em units - and they should be set to meet\n  the needs of your content.\n\n  These media queries can be referenced like so:\n\n  @media (--breakpoint-not-small) {\n    .medium-and-larger-specific-style {\n      background-color: red;\n    }\n  }\n\n  @media (--breakpoint-medium) {\n    .medium-screen-specific-style {\n      background-color: red;\n    }\n  }\n\n  @media (--breakpoint-large) {\n    .large-screen-specific-style {\n      background-color: red;\n    }\n  }\n\n  @media (--breakpoint-extra-large) {\n    .extra-large-screen-specific-style {\n      background-color: red;\n    }\n  }\n\n*/"
space:"\n"
comment:"/* DEBUGGING */"
space:"\n"
comment:"/*\n\n  DEBUG CHILDREN\n\n  Just add the debug class to any element to see outlines on its\n  children.\n\n*/"
space:"\n"
.
ident:"debug"
space:" "
*
space:" "
{
space:" "
ident:"outline"
:
space:" "
number:"1"
ident:"px"
space:" "
ident:"solid"
space:" "
ident:"gold"
;
space:" "
}
space:"\n"
comment:"/* Uncomment out this line and rebuild if you want to debug your layout.*/"
space:"\n"
comment:"/* @import './_debug'; */"
space:"\n"
@
ident:"media"
space:" "
ident:"screen"
space:" "
ident:"and"
space:" "
(
ident:"min-width"
:
space:" "
number:"30"
ident:"em"
)
space:" "
{
space:"\n"
space:" "
.
ident:"cover-ns"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"cover"
;
space:" "
}
space:"\n"
space:" "
.
ident:"contain-ns"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"contain"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ba-ns"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bt-ns"
space:" "
{
space:" "
ident:"border-top-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-top-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-ns"
space:" "
{
space:" "
ident:"border-right-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-right-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bb-ns"
space:" "
{
space:" "
ident:"border-bottom-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-bottom-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bl-ns"
space:" "
{
space:" "
ident:"border-left-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-left-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bn-ns"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br0-ns"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br1-ns"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br2-ns"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br3-ns"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br4-ns"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-100-ns"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--bottom-ns"
space:" "
{
space:" "
ident:"border-top-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-top-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--top-ns"
space:" "
{
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--right-ns"
space:" "
{
space:" "
ident:"border-top-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--left-ns"
space:" "
{
space:" "
ident:"border-top-right-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--dotted-ns"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dotted"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--dashed-ns"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dashed"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--solid-ns"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--none-ns"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw0-ns"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw1-ns"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw2-ns"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw3-ns"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw4-ns"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw5-ns"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bt-0-ns"
space:" "
{
space:" "
ident:"border-top-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-0-ns"
space:" "
{
space:" "
ident:"border-right-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bb-0-ns"
space:" "
{
space:" "
ident:"border-bottom-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bl-0-ns"
space:" "
{
space:" "
ident:"border-left-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-1-ns"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-2-ns"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-3-ns"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-4-ns"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-5-ns"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"4"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-0-ns"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-0-ns"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-0-ns"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-0-ns"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-1-ns"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-1-ns"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-1-ns"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-1-ns"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-2-ns"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-2-ns"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-2-ns"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-2-ns"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top--1-ns"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right--1-ns"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom--1-ns"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left--1-ns"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top--2-ns"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right--2-ns"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom--2-ns"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left--2-ns"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"absolute--fill-ns"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cl-ns"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cr-ns"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cb-ns"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"both"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cn-ns"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dn-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"di-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"db-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"block"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dib-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-block"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dit-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-table"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dtc-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-cell"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-row-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-row-group-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row-group"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-column-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-column-group-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column-group"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt--fixed-ns"
space:" "
{
space:" "
ident:"table-layout"
:
space:" "
ident:"fixed"
;
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-ns"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"flex"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-auto-ns"
space:" "
{
space:" "
ident:"flex"
:
space:" "
number:"1"
space:" "
number:"1"
space:" "
ident:"auto"
;
space:" "
ident:"min-width"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"min-height"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
}
space:"\n"
space:" "
.
ident:"flex-none-ns"
space:" "
{
space:" "
ident:"flex"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-column-ns"
space:" "
{
space:" "
ident:"flex-direction"
:
space:" "
ident:"column"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-wrap-ns"
space:" "
{
space:" "
ident:"flex-wrap"
:
space:" "
ident:"wrap"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-start-ns"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-end-ns"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-center-ns"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-baseline-ns"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-stretch-ns"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-start-ns"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-end-ns"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-center-ns"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-baseline-ns"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-stretch-ns"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-start-ns"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-end-ns"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-center-ns"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-between-ns"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-around-ns"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-start-ns"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-end-ns"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-center-ns"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-between-ns"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-around-ns"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-stretch-ns"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-0-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-1-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-2-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"2"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-3-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"3"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-4-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"4"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-5-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"5"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-6-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"6"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-7-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"7"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-8-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"8"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-last-ns"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"99999"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fl-ns"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"left"
;
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fr-ns"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"right"
;
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fn-ns"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"i-ns"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"italic"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fs-normal-ns"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"normal-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"bold"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw1-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"100"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw2-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"200"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw3-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"300"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw4-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"400"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw5-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"500"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw6-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"600"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw7-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"700"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw8-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"800"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw9-ns"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"900"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h1-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h2-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h3-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h4-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h5-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-25-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-50-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-75-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-100-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-auto-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-inherit-ns"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"inherit"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-ns"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"1"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-tight-ns"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
-
.
number:"0"
number:"5"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-mega-ns"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"25"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-solid-ns"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-title-ns"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.3"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-copy-ns"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.6"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw-100-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw1-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw2-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw3-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw4-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw5-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw6-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"32"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw7-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"48"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw8-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"64"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw9-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"96"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw-none-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w1-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w2-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w3-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w4-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w5-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-10-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"10"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-20-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"20"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-25-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-33-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"33"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-34-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"34"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-40-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"40"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-50-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-60-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"60"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-75-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-80-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"80"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-100-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-auto-ns"
space:" "
{
space:" "
ident:"width"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-visible-ns"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-hidden-ns"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-scroll-ns"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-auto-ns"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-visible-ns"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-hidden-ns"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-scroll-ns"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-auto-ns"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-visible-ns"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-hidden-ns"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-scroll-ns"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-auto-ns"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"static-ns"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"static"
;
space:" "
}
space:"\n"
space:" "
.
ident:"relative-ns"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"relative"
;
space:" "
}
space:"\n"
space:" "
.
ident:"absolute-ns"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"absolute"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fixed-ns"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa0-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa1-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa2-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa3-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa4-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa5-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa6-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa7-ns"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl0-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl1-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl2-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl3-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl4-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl5-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl6-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl7-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr0-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr1-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr2-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr3-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr4-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr5-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr6-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr7-ns"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb0-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb1-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb2-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb3-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb4-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb5-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb6-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb7-ns"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt0-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt1-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt2-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt3-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt4-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt5-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt6-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt7-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv0-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv1-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv2-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv3-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv4-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv5-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv6-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv7-ns"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph0-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph1-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph2-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph3-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph4-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph5-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph6-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph7-ns"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma0-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma1-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma2-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma3-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma4-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma5-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma6-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma7-ns"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml0-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml1-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml2-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml3-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml4-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml5-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml6-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml7-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr0-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr1-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr2-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr3-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr4-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr5-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr6-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr7-ns"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb0-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb1-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb2-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb3-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb4-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb5-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb6-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb7-ns"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt0-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt1-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt2-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt3-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt4-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt5-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt6-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt7-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv0-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv1-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv2-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv3-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv4-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv5-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv6-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv7-ns"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh0-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh1-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh2-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh3-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh4-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh5-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh6-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh7-ns"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"strike-ns"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"line-through"
;
space:" "
}
space:"\n"
space:" "
.
ident:"underline-ns"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"underline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"no-underline-ns"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tl-ns"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tr-ns"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tc-ns"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttc-ns"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"capitalize"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttl-ns"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"lowercase"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttu-ns"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"uppercase"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttn-ns"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f-6-ns"
,
space:" "
.
ident:"f-headline-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"6"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f-5-ns"
,
space:" "
.
ident:"f-subheadline-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f1-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"3"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f2-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"2.25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f3-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f4-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f5-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f6-ns"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
.
number:"875"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"30"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-wide-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"34"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-narrow-ns"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"20"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"indent-ns"
space:" "
{
space:" "
ident:"text-indent"
:
space:" "
number:"1"
ident:"em"
;
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"small-caps-ns"
space:" "
{
space:" "
ident:"font-variant"
:
space:" "
ident:"small-caps"
;
space:" "
}
space:"\n"
space:" "
.
ident:"truncate-ns"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
ident:"text-overflow"
:
space:" "
ident:"ellipsis"
;
space:" "
}
space:"\n"
space:" "
.
ident:"clip-ns"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
space:" "
!
ident:"important"
;
space:" "
ident:"position"
:
space:" "
ident:"absolute"
space:" "
!
ident:"important"
;
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
comment:"/* IE6, IE7 */"
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"ws-normal-ns"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"nowrap-ns"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pre-ns"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"pre"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-base-ns"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-mid-ns"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"middle"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-top-ns"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"top"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-btm-ns"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"bottom"
;
space:" "
}
space:"\n"
}
space:"\n"
@
ident:"media"
space:" "
ident:"screen"
space:" "
ident:"and"
space:" "
(
ident:"min-width"
:
space:" "
number:"30"
ident:"em"
)
space:" "
ident:"and"
space:" "
(
ident:"max-width"
:
space:" "
number:"60"
ident:"em"
)
space:" "
{
space:"\n"
space:" "
.
ident:"cover-m"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"cover"
;
space:" "
}
space:"\n"
space:" "
.
ident:"contain-m"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"contain"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ba-m"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bt-m"
space:" "
{
space:" "
ident:"border-top-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-top-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-m"
space:" "
{
space:" "
ident:"border-right-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-right-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bb-m"
space:" "
{
space:" "
ident:"border-bottom-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-bottom-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bl-m"
space:" "
{
space:" "
ident:"border-left-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-left-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bn-m"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br0-m"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br1-m"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br2-m"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br3-m"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br4-m"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-100-m"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--bottom-m"
space:" "
{
space:" "
ident:"border-top-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-top-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--top-m"
space:" "
{
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--right-m"
space:" "
{
space:" "
ident:"border-top-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--left-m"
space:" "
{
space:" "
ident:"border-top-right-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--dotted-m"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dotted"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--dashed-m"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dashed"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--solid-m"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--none-m"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw0-m"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw1-m"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw2-m"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw3-m"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw4-m"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw5-m"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bt-0-m"
space:" "
{
space:" "
ident:"border-top-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-0-m"
space:" "
{
space:" "
ident:"border-right-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bb-0-m"
space:" "
{
space:" "
ident:"border-bottom-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bl-0-m"
space:" "
{
space:" "
ident:"border-left-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-1-m"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-2-m"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-3-m"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-4-m"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-5-m"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"4"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-0-m"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-0-m"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-0-m"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-0-m"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-1-m"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-1-m"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-1-m"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-1-m"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-2-m"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-2-m"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-2-m"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-2-m"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top--1-m"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right--1-m"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom--1-m"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left--1-m"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top--2-m"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right--2-m"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom--2-m"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left--2-m"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"absolute--fill-m"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cl-m"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cr-m"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cb-m"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"both"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cn-m"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dn-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"di-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"db-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"block"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dib-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-block"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dit-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-table"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dtc-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-cell"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-row-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-row-group-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row-group"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-column-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-column-group-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column-group"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt--fixed-m"
space:" "
{
space:" "
ident:"table-layout"
:
space:" "
ident:"fixed"
;
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-m"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"flex"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-auto-m"
space:" "
{
space:" "
ident:"flex"
:
space:" "
number:"1"
space:" "
number:"1"
space:" "
ident:"auto"
;
space:" "
ident:"min-width"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"min-height"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
}
space:"\n"
space:" "
.
ident:"flex-none-m"
space:" "
{
space:" "
ident:"flex"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-column-m"
space:" "
{
space:" "
ident:"flex-direction"
:
space:" "
ident:"column"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-wrap-m"
space:" "
{
space:" "
ident:"flex-wrap"
:
space:" "
ident:"wrap"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-start-m"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-end-m"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-center-m"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-baseline-m"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-stretch-m"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-start-m"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-end-m"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-center-m"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-baseline-m"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-stretch-m"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-start-m"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-end-m"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-center-m"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-between-m"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-around-m"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-start-m"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-end-m"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-center-m"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-between-m"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-around-m"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-stretch-m"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-0-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-1-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-2-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"2"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-3-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"3"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-4-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"4"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-5-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"5"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-6-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"6"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-7-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"7"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-8-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"8"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-last-m"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"99999"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fl-m"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"left"
;
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fr-m"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"right"
;
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fn-m"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"i-m"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"italic"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fs-normal-m"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"normal-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"bold"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw1-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"100"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw2-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"200"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw3-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"300"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw4-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"400"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw5-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"500"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw6-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"600"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw7-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"700"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw8-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"800"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw9-m"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"900"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h1-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h2-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h3-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h4-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h5-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-25-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-50-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-75-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-100-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-auto-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-inherit-m"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"inherit"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-m"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"1"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-tight-m"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
-
.
number:"0"
number:"5"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-mega-m"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"25"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-solid-m"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-title-m"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.3"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-copy-m"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.6"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw-100-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw1-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw2-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw3-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw4-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw5-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw6-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"32"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw7-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"48"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw8-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"64"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw9-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"96"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw-none-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w1-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w2-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w3-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w4-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w5-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-10-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"10"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-20-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"20"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-25-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-33-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"33"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-34-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"34"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-40-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"40"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-50-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-60-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"60"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-75-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-80-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"80"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-100-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-auto-m"
space:" "
{
space:" "
ident:"width"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-visible-m"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-hidden-m"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-scroll-m"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-auto-m"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-visible-m"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-hidden-m"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-scroll-m"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-auto-m"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-visible-m"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-hidden-m"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-scroll-m"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-auto-m"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"static-m"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"static"
;
space:" "
}
space:"\n"
space:" "
.
ident:"relative-m"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"relative"
;
space:" "
}
space:"\n"
space:" "
.
ident:"absolute-m"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"absolute"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fixed-m"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa0-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa1-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa2-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa3-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa4-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa5-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa6-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa7-m"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl0-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl1-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl2-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl3-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl4-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl5-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl6-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl7-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr0-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr1-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr2-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr3-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr4-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr5-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr6-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr7-m"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb0-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb1-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb2-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb3-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb4-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb5-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb6-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb7-m"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt0-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt1-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt2-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt3-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt4-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt5-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt6-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt7-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv0-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv1-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv2-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv3-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv4-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv5-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv6-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv7-m"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph0-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph1-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph2-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph3-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph4-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph5-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph6-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph7-m"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma0-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma1-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma2-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma3-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma4-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma5-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma6-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma7-m"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml0-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml1-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml2-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml3-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml4-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml5-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml6-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml7-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr0-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr1-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr2-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr3-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr4-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr5-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr6-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr7-m"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb0-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb1-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb2-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb3-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb4-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb5-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb6-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb7-m"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt0-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt1-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt2-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt3-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt4-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt5-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt6-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt7-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv0-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv1-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv2-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv3-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv4-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv5-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv6-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv7-m"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh0-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh1-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh2-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh3-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh4-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh5-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh6-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh7-m"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"strike-m"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"line-through"
;
space:" "
}
space:"\n"
space:" "
.
ident:"underline-m"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"underline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"no-underline-m"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tl-m"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tr-m"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tc-m"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttc-m"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"capitalize"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttl-m"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"lowercase"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttu-m"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"uppercase"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttn-m"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f-6-m"
,
space:" "
.
ident:"f-headline-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"6"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f-5-m"
,
space:" "
.
ident:"f-subheadline-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f1-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"3"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f2-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"2.25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f3-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f4-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f5-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f6-m"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
.
number:"875"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"30"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-wide-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"34"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-narrow-m"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"20"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"indent-m"
space:" "
{
space:" "
ident:"text-indent"
:
space:" "
number:"1"
ident:"em"
;
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"small-caps-m"
space:" "
{
space:" "
ident:"font-variant"
:
space:" "
ident:"small-caps"
;
space:" "
}
space:"\n"
space:" "
.
ident:"truncate-m"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
ident:"text-overflow"
:
space:" "
ident:"ellipsis"
;
space:" "
}
space:"\n"
space:" "
.
ident:"clip-m"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
space:" "
!
ident:"important"
;
space:" "
ident:"position"
:
space:" "
ident:"absolute"
space:" "
!
ident:"important"
;
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
comment:"/* IE6, IE7 */"
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"ws-normal-m"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"nowrap-m"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pre-m"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"pre"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-base-m"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-mid-m"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"middle"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-top-m"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"top"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-btm-m"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"bottom"
;
space:" "
}
space:"\n"
}
space:"\n"
@
ident:"media"
space:" "
ident:"screen"
space:" "
ident:"and"
space:" "
(
ident:"min-width"
:
space:" "
number:"60"
ident:"em"
)
space:" "
{
space:"\n"
space:" "
.
ident:"cover-l"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"cover"
;
space:" "
}
space:"\n"
space:" "
.
ident:"contain-l"
space:" "
{
space:" "
ident:"background-size"
:
space:" "
ident:"contain"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ba-l"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bt-l"
space:" "
{
space:" "
ident:"border-top-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-top-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-l"
space:" "
{
space:" "
ident:"border-right-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-right-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bb-l"
space:" "
{
space:" "
ident:"border-bottom-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-bottom-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bl-l"
space:" "
{
space:" "
ident:"border-left-style"
:
space:" "
ident:"solid"
;
space:" "
ident:"border-left-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bn-l"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br0-l"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br1-l"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br2-l"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br3-l"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br4-l"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-100-l"
space:" "
{
space:" "
ident:"border-radius"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--bottom-l"
space:" "
{
space:" "
ident:"border-radius-top-left"
:
space:" "
number:"0"
;
space:" "
ident:"border-radius-top-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--top-l"
space:" "
{
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--right-l"
space:" "
{
space:" "
ident:"border-top-left-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-left-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br--left-l"
space:" "
{
space:" "
ident:"border-top-right-radius"
:
space:" "
number:"0"
;
space:" "
ident:"border-bottom-right-radius"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--dotted-l"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dotted"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--dashed-l"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"dashed"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--solid-l"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b--none-l"
space:" "
{
space:" "
ident:"border-style"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw0-l"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw1-l"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"125"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw2-l"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw3-l"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw4-l"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bw5-l"
space:" "
{
space:" "
ident:"border-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bt-0-l"
space:" "
{
space:" "
ident:"border-top-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"br-0-l"
space:" "
{
space:" "
ident:"border-right-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bb-0-l"
space:" "
{
space:" "
ident:"border-bottom-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bl-0-l"
space:" "
{
space:" "
ident:"border-left-width"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-1-l"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-2-l"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"0"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-3-l"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-4-l"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"2"
ident:"px"
space:" "
number:"2"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"shadow-5-l"
space:" "
{
space:" "
ident:"box-shadow"
:
space:" "
number:"4"
ident:"px"
space:" "
number:"4"
ident:"px"
space:" "
number:"8"
ident:"px"
space:" "
number:"0"
ident:"px"
space:" "
ident:"rgba"
(
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0"
,
space:" "
number:"0.2"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-0-l"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-0-l"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-0-l"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-0-l"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-1-l"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-1-l"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-1-l"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-1-l"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top-2-l"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left-2-l"
space:" "
{
space:" "
ident:"left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right-2-l"
space:" "
{
space:" "
ident:"right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom-2-l"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top--1-l"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right--1-l"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom--1-l"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left--1-l"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"top--2-l"
space:" "
{
space:" "
ident:"top"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"right--2-l"
space:" "
{
space:" "
ident:"right"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"bottom--2-l"
space:" "
{
space:" "
ident:"bottom"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"left--2-l"
space:" "
{
space:" "
ident:"left"
:
space:" "
-
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"absolute--fill-l"
space:" "
{
space:" "
ident:"top"
:
space:" "
number:"0"
;
space:" "
ident:"right"
:
space:" "
number:"0"
;
space:" "
ident:"bottom"
:
space:" "
number:"0"
;
space:" "
ident:"left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cl-l"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cr-l"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cb-l"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"both"
;
space:" "
}
space:"\n"
space:" "
.
ident:"cn-l"
space:" "
{
space:" "
ident:"clear"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dn-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"di-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"db-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"block"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dib-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-block"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dit-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"inline-table"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dtc-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-cell"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-row-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-row-group-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-row-group"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-column-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt-column-group-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"table-column-group"
;
space:" "
}
space:"\n"
space:" "
.
ident:"dt--fixed-l"
space:" "
{
space:" "
ident:"table-layout"
:
space:" "
ident:"fixed"
;
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-l"
space:" "
{
space:" "
ident:"display"
:
space:" "
ident:"flex"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-auto-l"
space:" "
{
space:" "
ident:"flex"
:
space:" "
number:"1"
space:" "
number:"1"
space:" "
ident:"auto"
;
space:" "
ident:"min-width"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
ident:"min-height"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:" "
}
space:"\n"
space:" "
.
ident:"flex-none-l"
space:" "
{
space:" "
ident:"flex"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-column-l"
space:" "
{
space:" "
ident:"flex-direction"
:
space:" "
ident:"column"
;
space:" "
}
space:"\n"
space:" "
.
ident:"flex-wrap-l"
space:" "
{
space:" "
ident:"flex-wrap"
:
space:" "
ident:"wrap"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-start-l"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-end-l"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-center-l"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-baseline-l"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"items-stretch-l"
space:" "
{
space:" "
ident:"align-items"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-start-l"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-end-l"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-center-l"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-baseline-l"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"self-stretch-l"
space:" "
{
space:" "
ident:"align-self"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-start-l"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-end-l"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-center-l"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-between-l"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
space:" "
.
ident:"justify-around-l"
space:" "
{
space:" "
ident:"justify-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-start-l"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-start"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-end-l"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"flex-end"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-center-l"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-between-l"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-between"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-around-l"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"space-around"
;
space:" "
}
space:"\n"
space:" "
.
ident:"content-stretch-l"
space:" "
{
space:" "
ident:"align-content"
:
space:" "
ident:"stretch"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-0-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-1-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-2-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"2"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-3-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"3"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-4-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"4"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-5-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"5"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-6-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"6"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-7-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"7"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-8-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"8"
;
space:" "
}
space:"\n"
space:" "
.
ident:"order-last-l"
space:" "
{
space:" "
ident:"order"
:
space:" "
number:"99999"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fl-l"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"left"
;
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fr-l"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"right"
;
space:" "
ident:"display"
:
space:" "
ident:"inline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fn-l"
space:" "
{
space:" "
ident:"float"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"i-l"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"italic"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fs-normal-l"
space:" "
{
space:" "
ident:"font-style"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"normal-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"b-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
ident:"bold"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw1-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"100"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw2-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"200"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw3-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"300"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw4-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"400"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw5-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"500"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw6-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"600"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw7-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"700"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw8-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"800"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fw9-l"
space:" "
{
space:" "
ident:"font-weight"
:
space:" "
number:"900"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h1-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h2-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h3-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h4-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h5-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-25-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-50-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-75-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-100-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-auto-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"h-inherit-l"
space:" "
{
space:" "
ident:"height"
:
space:" "
ident:"inherit"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-l"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"1"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-tight-l"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
-
.
number:"0"
number:"5"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tracked-mega-l"
space:" "
{
space:" "
ident:"letter-spacing"
:
space:" "
.
number:"25"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-solid-l"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-title-l"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.3"
;
space:" "
}
space:"\n"
space:" "
.
ident:"lh-copy-l"
space:" "
{
space:" "
ident:"line-height"
:
space:" "
number:"1.6"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw-100-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw1-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw2-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw3-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw4-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw5-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw6-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"32"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw7-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"48"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw8-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"64"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw9-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"96"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mw-none-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w1-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w2-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w3-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w4-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w5-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-10-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"10"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-20-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"20"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-25-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"25"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-33-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"33"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-34-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"34"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-40-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"40"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-50-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"50"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-60-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"60"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-75-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"75"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-80-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"80"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-100-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
}
space:"\n"
space:" "
.
ident:"w-auto-l"
space:" "
{
space:" "
ident:"width"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-visible-l"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-hidden-l"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-scroll-l"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-auto-l"
space:" "
{
space:" "
ident:"overflow"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-visible-l"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-hidden-l"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-scroll-l"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-x-auto-l"
space:" "
{
space:" "
ident:"overflow-x"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-visible-l"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"visible"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-hidden-l"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"hidden"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-scroll-l"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"scroll"
;
space:" "
}
space:"\n"
space:" "
.
ident:"overflow-y-auto-l"
space:" "
{
space:" "
ident:"overflow-y"
:
space:" "
ident:"auto"
;
space:" "
}
space:"\n"
space:" "
.
ident:"static-l"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"static"
;
space:" "
}
space:"\n"
space:" "
.
ident:"relative-l"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"relative"
;
space:" "
}
space:"\n"
space:" "
.
ident:"absolute-l"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"absolute"
;
space:" "
}
space:"\n"
space:" "
.
ident:"fixed-l"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa0-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa1-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa2-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa3-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa4-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa5-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa6-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pa7-l"
space:" "
{
space:" "
ident:"padding"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl0-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl1-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl2-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl3-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl4-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl5-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl6-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pl7-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr0-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr1-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr2-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr3-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr4-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr5-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr6-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pr7-l"
space:" "
{
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb0-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb1-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb2-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb3-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb4-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb5-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb6-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pb7-l"
space:" "
{
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt0-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt1-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt2-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt3-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt4-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt5-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt6-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pt7-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv0-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"0"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv1-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv2-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv3-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv4-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv5-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv6-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pv7-l"
space:" "
{
space:" "
ident:"padding-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph0-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"0"
;
space:" "
ident:"padding-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph1-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph2-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph3-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph4-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph5-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph6-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ph7-l"
space:" "
{
space:" "
ident:"padding-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"padding-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma0-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma1-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma2-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma3-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma4-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma5-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma6-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ma7-l"
space:" "
{
space:" "
ident:"margin"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml0-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml1-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml2-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml3-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml4-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml5-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml6-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ml7-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr0-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr1-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr2-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr3-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr4-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr5-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr6-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mr7-l"
space:" "
{
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb0-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb1-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb2-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb3-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb4-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb5-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb6-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mb7-l"
space:" "
{
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt0-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt1-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt2-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt3-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt4-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt5-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt6-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mt7-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv0-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv1-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv2-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv3-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv4-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv5-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv6-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mv7-l"
space:" "
{
space:" "
ident:"margin-top"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh0-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"0"
;
space:" "
ident:"margin-right"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh1-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh2-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
.
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh3-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh4-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"2"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh5-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"4"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh6-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"8"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"mh7-l"
space:" "
{
space:" "
ident:"margin-left"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
ident:"margin-right"
:
space:" "
number:"16"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"strike-l"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"line-through"
;
space:" "
}
space:"\n"
space:" "
.
ident:"underline-l"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"underline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"no-underline-l"
space:" "
{
space:" "
ident:"text-decoration"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tl-l"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"left"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tr-l"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"right"
;
space:" "
}
space:"\n"
space:" "
.
ident:"tc-l"
space:" "
{
space:" "
ident:"text-align"
:
space:" "
ident:"center"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttc-l"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"capitalize"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttl-l"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"lowercase"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttu-l"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"uppercase"
;
space:" "
}
space:"\n"
space:" "
.
ident:"ttn-l"
space:" "
{
space:" "
ident:"text-transform"
:
space:" "
ident:"none"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f-6-l"
,
space:" "
.
ident:"f-headline-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"6"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f-5-l"
,
space:" "
.
ident:"f-subheadline-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f1-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"3"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f2-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"2.25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f3-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.5"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f4-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1.25"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f5-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
number:"1"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"f6-l"
space:" "
{
space:" "
ident:"font-size"
:
space:" "
.
number:"875"
ident:"rem"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"30"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-wide-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"34"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"measure-narrow-l"
space:" "
{
space:" "
ident:"max-width"
:
space:" "
number:"20"
ident:"em"
;
space:" "
}
space:"\n"
space:" "
.
ident:"indent-l"
space:" "
{
space:" "
ident:"text-indent"
:
space:" "
number:"1"
ident:"em"
;
space:" "
ident:"margin-top"
:
space:" "
number:"0"
;
space:" "
ident:"margin-bottom"
:
space:" "
number:"0"
;
space:" "
}
space:"\n"
space:" "
.
ident:"small-caps-l"
space:" "
{
space:" "
ident:"font-variant"
:
space:" "
ident:"small-caps"
;
space:" "
}
space:"\n"
space:" "
.
ident:"truncate-l"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:" "
ident:"text-overflow"
:
space:" "
ident:"ellipsis"
;
space:" "
}
space:"\n"
space:" "
.
ident:"clip-l"
space:" "
{
space:" "
ident:"position"
:
space:" "
ident:"fixed"
space:" "
!
ident:"important"
;
space:" "
ident:"position"
:
space:" "
ident:"absolute"
space:" "
!
ident:"important"
;
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
comment:"/* IE6, IE7 */"
space:" "
ident:"clip"
:
space:" "
ident:"rect"
(
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
,
space:" "
number:"1"
ident:"px"
space:" "
)
;
space:" "
}
space:"\n"
space:" "
.
ident:"ws-normal-l"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"normal"
;
space:" "
}
space:"\n"
space:" "
.
ident:"nowrap-l"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"nowrap"
;
space:" "
}
space:"\n"
space:" "
.
ident:"pre-l"
space:" "
{
space:" "
ident:"white-space"
:
space:" "
ident:"pre"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-base-l"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-mid-l"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"middle"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-top-l"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"top"
;
space:" "
}
space:"\n"
space:" "
.
ident:"v-btm-l"
space:" "
{
space:" "
ident:"vertical-align"
:
space:" "
ident:"bottom"
;
space:" "
}
space:"\n"
}
space:"\n"
space:"\n"