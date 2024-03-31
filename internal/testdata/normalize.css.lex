comment:"/*! normalize.css v4.1.1 | MIT License | github.com/necolas/normalize.css */"
space:"\n"
space:"\n"
comment:"/**\n * 1. Change the default font family in all browsers (opinionated).\n * 2. Prevent adjustments of font size after orientation changes in IE and iOS.\n */"
space:"\n"
space:"\n"
ident:"html"
space:" "
{
space:"\n"
space:"  "
ident:"font-family"
:
space:" "
ident:"sans-serif"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
-
ident:"ms-text-size-adjust"
:
space:" "
number:"100"
percent:"%"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
-
ident:"webkit-text-size-adjust"
:
space:" "
number:"100"
percent:"%"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Remove the margin in all browsers (opinionated).\n */"
space:"\n"
space:"\n"
ident:"body"
space:" "
{
space:"\n"
space:"  "
ident:"margin"
:
space:" "
number:"0"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/* HTML5 display definitions\n   ========================================================================== */"
space:"\n"
space:"\n"
comment:"/**\n * Add the correct display in IE 9-.\n * 1. Add the correct display in Edge, IE, and Firefox.\n * 2. Add the correct display in IE.\n */"
space:"\n"
space:"\n"
ident:"article"
,
space:"\n"
ident:"aside"
,
space:"\n"
ident:"details"
,
space:" "
comment:"/* 1 */"
space:"\n"
ident:"figcaption"
,
space:"\n"
ident:"figure"
,
space:"\n"
ident:"footer"
,
space:"\n"
ident:"header"
,
space:"\n"
ident:"main"
,
space:" "
comment:"/* 2 */"
space:"\n"
ident:"menu"
,
space:"\n"
ident:"nav"
,
space:"\n"
ident:"section"
,
space:"\n"
ident:"summary"
space:" "
{
space:"\n"
space:"  "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"display"
:
space:" "
ident:"block"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct display in IE 9-.\n */"
space:"\n"
space:"\n"
ident:"audio"
,
space:"\n"
ident:"canvas"
,
space:"\n"
ident:"progress"
,
space:"\n"
ident:"video"
space:" "
{
space:"\n"
space:"  "
ident:"display"
:
space:" "
ident:"inline-block"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct display in iOS 4-7.\n */"
space:"\n"
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
space:"\n"
space:"  "
ident:"display"
:
space:" "
ident:"none"
;
space:"\n"
space:"  "
ident:"height"
:
space:" "
number:"0"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct vertical alignment in Chrome, Firefox, and Opera.\n */"
space:"\n"
space:"\n"
ident:"progress"
space:" "
{
space:"\n"
space:"  "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct display in IE 10-.\n * 1. Add the correct display in IE.\n */"
space:"\n"
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
space:"\n"
space:"  "
ident:"display"
:
space:" "
ident:"none"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/* Links\n   ========================================================================== */"
space:"\n"
space:"\n"
comment:"/**\n * 1. Remove the gray background on active links in IE 10.\n * 2. Remove gaps in links underline in iOS 8+ and Safari 8+.\n */"
space:"\n"
space:"\n"
ident:"a"
space:" "
{
space:"\n"
space:"  "
ident:"background-color"
:
space:" "
ident:"transparent"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
-
ident:"webkit-text-decoration-skip"
:
space:" "
ident:"objects"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Remove the outline on focused links when they are also active or hovered\n * in all browsers (opinionated).\n */"
space:"\n"
space:"\n"
ident:"a"
:
ident:"active"
,
space:"\n"
ident:"a"
:
ident:"hover"
space:" "
{
space:"\n"
space:"  "
ident:"outline-width"
:
space:" "
number:"0"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/* Text-level semantics\n   ========================================================================== */"
space:"\n"
space:"\n"
comment:"/**\n * 1. Remove the bottom border in Firefox 39-.\n * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.\n */"
space:"\n"
space:"\n"
ident:"abbr"
[
ident:"title"
]
space:" "
{
space:"\n"
space:"  "
ident:"border-bottom"
:
space:" "
ident:"none"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"text-decoration"
:
space:" "
ident:"underline"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"text-decoration"
:
space:" "
ident:"underline"
space:" "
ident:"dotted"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Prevent the duplicate application of `bolder` by the next rule in Safari 6.\n */"
space:"\n"
space:"\n"
ident:"b"
,
space:"\n"
ident:"strong"
space:" "
{
space:"\n"
space:"  "
ident:"font-weight"
:
space:" "
ident:"inherit"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct font weight in Chrome, Edge, and Safari.\n */"
space:"\n"
space:"\n"
ident:"b"
,
space:"\n"
ident:"strong"
space:" "
{
space:"\n"
space:"  "
ident:"font-weight"
:
space:" "
ident:"bolder"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct font style in Android 4.3-.\n */"
space:"\n"
space:"\n"
ident:"dfn"
space:" "
{
space:"\n"
space:"  "
ident:"font-style"
:
space:" "
ident:"italic"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Correct the font size and margin on `h1` elements within `section` and\n * `article` contexts in Chrome, Firefox, and Safari.\n */"
space:"\n"
space:"\n"
ident:"h1"
space:" "
{
space:"\n"
space:"  "
ident:"font-size"
:
space:" "
number:"2"
ident:"em"
;
space:"\n"
space:"  "
ident:"margin"
:
space:" "
number:"0.67"
ident:"em"
space:" "
number:"0"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct background and color in IE 9-.\n */"
space:"\n"
space:"\n"
ident:"mark"
space:" "
{
space:"\n"
space:"  "
ident:"background-color"
:
space:" "
#
ident:"ff0"
;
space:"\n"
space:"  "
ident:"color"
:
space:" "
#
ident:"000"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct font size in all browsers.\n */"
space:"\n"
space:"\n"
ident:"small"
space:" "
{
space:"\n"
space:"  "
ident:"font-size"
:
space:" "
number:"80"
percent:"%"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Prevent `sub` and `sup` elements from affecting the line height in\n * all browsers.\n */"
space:"\n"
space:"\n"
ident:"sub"
,
space:"\n"
ident:"sup"
space:" "
{
space:"\n"
space:"  "
ident:"font-size"
:
space:" "
number:"75"
percent:"%"
;
space:"\n"
space:"  "
ident:"line-height"
:
space:" "
number:"0"
;
space:"\n"
space:"  "
ident:"position"
:
space:" "
ident:"relative"
;
space:"\n"
space:"  "
ident:"vertical-align"
:
space:" "
ident:"baseline"
;
space:"\n"
}
space:"\n"
space:"\n"
ident:"sub"
space:" "
{
space:"\n"
space:"  "
ident:"bottom"
:
space:" "
-
number:"0.25"
ident:"em"
;
space:"\n"
}
space:"\n"
space:"\n"
ident:"sup"
space:" "
{
space:"\n"
space:"  "
ident:"top"
:
space:" "
-
number:"0.5"
ident:"em"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/* Embedded content\n   ========================================================================== */"
space:"\n"
space:"\n"
comment:"/**\n * Remove the border on images inside links in IE 10-.\n */"
space:"\n"
space:"\n"
ident:"img"
space:" "
{
space:"\n"
space:"  "
ident:"border-style"
:
space:" "
ident:"none"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Hide the overflow in IE.\n */"
space:"\n"
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
space:"\n"
space:"  "
ident:"overflow"
:
space:" "
ident:"hidden"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/* Grouping content\n   ========================================================================== */"
space:"\n"
space:"\n"
comment:"/**\n * 1. Correct the inheritance and scaling of font size in all browsers.\n * 2. Correct the odd `em` font sizing in all browsers.\n */"
space:"\n"
space:"\n"
ident:"code"
,
space:"\n"
ident:"kbd"
,
space:"\n"
ident:"pre"
,
space:"\n"
ident:"samp"
space:" "
{
space:"\n"
space:"  "
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
space:"\n"
space:"  "
ident:"font-size"
:
space:" "
number:"1"
ident:"em"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Add the correct margin in IE 8.\n */"
space:"\n"
space:"\n"
ident:"figure"
space:" "
{
space:"\n"
space:"  "
ident:"margin"
:
space:" "
number:"1"
ident:"em"
space:" "
number:"40"
ident:"px"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * 1. Add the correct box sizing in Firefox.\n * 2. Show the overflow in Edge and IE.\n */"
space:"\n"
space:"\n"
ident:"hr"
space:" "
{
space:"\n"
space:"  "
ident:"box-sizing"
:
space:" "
ident:"content-box"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"height"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/* Forms\n   ========================================================================== */"
space:"\n"
space:"\n"
comment:"/**\n * 1. Change font properties to `inherit` in all browsers (opinionated).\n * 2. Remove the margin in Firefox and Safari.\n */"
space:"\n"
space:"\n"
ident:"button"
,
space:"\n"
ident:"input"
,
space:"\n"
ident:"select"
,
space:"\n"
ident:"textarea"
space:" "
{
space:"\n"
space:"  "
ident:"font"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"margin"
:
space:" "
number:"0"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Restore the font weight unset by the previous rule.\n */"
space:"\n"
space:"\n"
ident:"optgroup"
space:" "
{
space:"\n"
space:"  "
ident:"font-weight"
:
space:" "
ident:"bold"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Show the overflow in IE.\n * 1. Show the overflow in Edge.\n */"
space:"\n"
space:"\n"
ident:"button"
,
space:"\n"
ident:"input"
space:" "
{
space:"\n"
space:"  "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"overflow"
:
space:" "
ident:"visible"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Remove the inheritance of text transform in Edge, Firefox, and IE.\n * 1. Remove the inheritance of text transform in Firefox.\n */"
space:"\n"
space:"\n"
ident:"button"
,
space:"\n"
ident:"select"
space:" "
{
space:"\n"
space:"  "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"text-transform"
:
space:" "
ident:"none"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * 1. Prevent a WebKit bug where (2) destroys native `audio` and `video`\n *    controls in Android 4.\n * 2. Correct the inability to style clickable types in iOS and Safari.\n */"
space:"\n"
space:"\n"
ident:"button"
,
space:"\n"
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
space:"\n"
[
ident:"type"
=
string:"\"submit\""
]
space:" "
{
space:"\n"
space:"  "
-
ident:"webkit-appearance"
:
space:" "
ident:"button"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Remove the inner border and padding in Firefox.\n */"
space:"\n"
space:"\n"
ident:"button"
::
ident:"-moz-focus-inner"
,
space:"\n"
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
space:"\n"
[
ident:"type"
=
string:"\"submit\""
]
::
ident:"-moz-focus-inner"
space:" "
{
space:"\n"
space:"  "
ident:"border-style"
:
space:" "
ident:"none"
;
space:"\n"
space:"  "
ident:"padding"
:
space:" "
number:"0"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Restore the focus styles unset by the previous rule.\n */"
space:"\n"
space:"\n"
ident:"button"
:
ident:"-moz-focusring"
,
space:"\n"
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
space:"\n"
[
ident:"type"
=
string:"\"submit\""
]
:
ident:"-moz-focusring"
space:" "
{
space:"\n"
space:"  "
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
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Change the border, margin, and padding in all browsers (opinionated).\n */"
space:"\n"
space:"\n"
ident:"fieldset"
space:" "
{
space:"\n"
space:"  "
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
space:"\n"
space:"  "
ident:"margin"
:
space:" "
number:"0"
space:" "
number:"2"
ident:"px"
;
space:"\n"
space:"  "
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
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * 1. Correct the text wrapping in Edge and IE.\n * 2. Correct the color inheritance from `fieldset` elements in IE.\n * 3. Remove the padding so developers are not caught out when they zero out\n *    `fieldset` elements in all browsers.\n */"
space:"\n"
space:"\n"
ident:"legend"
space:" "
{
space:"\n"
space:"  "
ident:"box-sizing"
:
space:" "
ident:"border-box"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"color"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"display"
:
space:" "
ident:"table"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"max-width"
:
space:" "
number:"100"
percent:"%"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
comment:"/* 3 */"
space:"\n"
space:"  "
ident:"white-space"
:
space:" "
ident:"normal"
;
space:" "
comment:"/* 1 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Remove the default vertical scrollbar in IE.\n */"
space:"\n"
space:"\n"
ident:"textarea"
space:" "
{
space:"\n"
space:"  "
ident:"overflow"
:
space:" "
ident:"auto"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * 1. Add the correct box sizing in IE 10-.\n * 2. Remove the padding in IE 10-.\n */"
space:"\n"
space:"\n"
[
ident:"type"
=
string:"\"checkbox\""
]
,
space:"\n"
[
ident:"type"
=
string:"\"radio\""
]
space:" "
{
space:"\n"
space:"  "
ident:"box-sizing"
:
space:" "
ident:"border-box"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Correct the cursor style of increment and decrement buttons in Chrome.\n */"
space:"\n"
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
space:"\n"
space:"  "
ident:"height"
:
space:" "
ident:"auto"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * 1. Correct the odd appearance in Chrome and Safari.\n * 2. Correct the outline style in Safari.\n */"
space:"\n"
space:"\n"
[
ident:"type"
=
string:"\"search\""
]
space:" "
{
space:"\n"
space:"  "
-
ident:"webkit-appearance"
:
space:" "
ident:"textfield"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"outline-offset"
:
space:" "
-
number:"2"
ident:"px"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Remove the inner padding and cancel buttons in Chrome and Safari on OS X.\n */"
space:"\n"
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
space:"\n"
space:"  "
-
ident:"webkit-appearance"
:
space:" "
ident:"none"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * Correct the text style of placeholders in Chrome, Edge, and Safari.\n */"
space:"\n"
space:"\n"
::
ident:"-webkit-input-placeholder"
space:" "
{
space:"\n"
space:"  "
ident:"color"
:
space:" "
ident:"inherit"
;
space:"\n"
space:"  "
ident:"opacity"
:
space:" "
number:"0.54"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/**\n * 1. Correct the inability to style clickable types in iOS and Safari.\n * 2. Change font properties to `inherit` in Safari.\n */"
space:"\n"
space:"\n"
::
ident:"-webkit-file-upload-button"
space:" "
{
space:"\n"
space:"  "
-
ident:"webkit-appearance"
:
space:" "
ident:"button"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"font"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"