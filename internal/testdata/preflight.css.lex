comment:"/*\n1. Prevent padding and border from affecting element width. (https://github.com/mozdevs/cssremedy/issues/4)\n2. Allow adding a border to an element by just adding a border-width. (https://github.com/tailwindcss/tailwindcss/pull/116)\n*/"
space:"\n"
space:"\n"
*
,
space:"\n"
::
ident:"before"
,
space:"\n"
::
ident:"after"
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
ident:"border-width"
:
space:" "
number:"0"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"border-style"
:
space:" "
ident:"solid"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"border-color"
:
space:" "
ident:"theme"
(
string:"\"borderColor.DEFAULT\""
,
space:" "
ident:"currentColor"
)
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
::
ident:"before"
,
space:"\n"
::
ident:"after"
space:" "
{
space:"\n"
space:"  "
--
ident:"tw-content"
:
space:" "
string:"\"\""
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\n1. Use a consistent sensible line-height in all browsers.\n2. Prevent adjustments of font size after orientation changes in iOS.\n3. Use a more readable tab size.\n4. Use the user's configured `sans` font-family by default.\n5. Use the user's configured `sans` font-feature-settings by default.\n6. Use the user's configured `sans` font-variation-settings by default.\n7. Disable tap highlights on iOS\n*/"
space:"\n"
space:"\n"
ident:"html"
,
space:"\n"
:
ident:"host"
space:" "
{
space:"\n"
space:"  "
ident:"line-height"
:
space:" "
number:"1.5"
;
space:" "
comment:"/* 1 */"
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
space:"  "
-
ident:"moz-tab-size"
:
space:" "
number:"4"
;
space:" "
comment:"/* 3 */"
space:"\n"
space:"  "
ident:"tab-size"
:
space:" "
number:"4"
;
space:" "
comment:"/* 3 */"
space:"\n"
space:"  "
ident:"font-family"
:
space:" "
ident:"theme"
(
space:"\n"
space:"    "
string:"\"fontFamily.sans\""
,
space:"\n"
space:"    "
ident:"ui-sans-serif"
,
space:"\n"
space:"    "
ident:"system-ui"
,
space:"\n"
space:"    "
ident:"sans-serif"
,
space:"\n"
space:"    "
string:"\"Apple Color Emoji\""
,
space:"\n"
space:"    "
string:"\"Segoe UI Emoji\""
,
space:"\n"
space:"    "
string:"\"Segoe UI Symbol\""
,
space:"\n"
space:"    "
string:"\"Noto Color Emoji\""
space:"\n"
space:"  "
)
;
space:" "
comment:"/* 4 */"
space:"\n"
space:"  "
ident:"font-feature-settings"
:
space:" "
ident:"theme"
(
space:"\n"
space:"    "
string:"\"fontFamily.sans[1].fontFeatureSettings\""
,
space:"\n"
space:"    "
ident:"normal"
space:"\n"
space:"  "
)
;
space:" "
comment:"/* 5 */"
space:"\n"
space:"  "
ident:"font-variation-settings"
:
space:" "
ident:"theme"
(
space:"\n"
space:"    "
string:"\"fontFamily.sans[1].fontVariationSettings\""
,
space:"\n"
space:"    "
ident:"normal"
space:"\n"
space:"  "
)
;
space:" "
comment:"/* 6 */"
space:"\n"
space:"  "
-
ident:"webkit-tap-highlight-color"
:
space:" "
ident:"transparent"
;
space:" "
comment:"/* 7 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\n1. Remove the margin in all browsers.\n2. Inherit line-height from `html` so users can set them as a class directly on the `html` element.\n*/"
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
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"line-height"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\n1. Add the correct height in Firefox.\n2. Correct the inheritance of border color in Firefox. (https://bugzilla.mozilla.org/show_bug.cgi?id=190655)\n3. Ensure horizontal rules are visible by default.\n*/"
space:"\n"
space:"\n"
ident:"hr"
space:" "
{
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
ident:"color"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"border-top-width"
:
space:" "
number:"1"
ident:"px"
;
space:" "
comment:"/* 3 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nAdd the correct text decoration in Chrome, Edge, and Safari.\n*/"
space:"\n"
space:"\n"
ident:"abbr"
:
ident:"where"
(
[
ident:"title"
]
)
space:" "
{
space:"\n"
space:"  "
ident:"text-decoration"
:
space:" "
ident:"underline"
space:" "
ident:"dotted"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nRemove the default font size and weight for headings.\n*/"
space:"\n"
space:"\n"
ident:"h1"
,
space:"\n"
ident:"h2"
,
space:"\n"
ident:"h3"
,
space:"\n"
ident:"h4"
,
space:"\n"
ident:"h5"
,
space:"\n"
ident:"h6"
space:" "
{
space:"\n"
space:"  "
ident:"font-size"
:
space:" "
ident:"inherit"
;
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
comment:"/*\nReset links to optimize for opt-in styling instead of opt-out.\n*/"
space:"\n"
space:"\n"
ident:"a"
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
ident:"text-decoration"
:
space:" "
ident:"inherit"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nAdd the correct font weight in Edge and Safari.\n*/"
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
comment:"/*\n1. Use the user's configured `mono` font-family by default.\n2. Use the user's configured `mono` font-feature-settings by default.\n3. Use the user's configured `mono` font-variation-settings by default.\n4. Correct the odd `em` font sizing in all browsers.\n*/"
space:"\n"
space:"\n"
ident:"code"
,
space:"\n"
ident:"kbd"
,
space:"\n"
ident:"samp"
,
space:"\n"
ident:"pre"
space:" "
{
space:"\n"
space:"  "
ident:"font-family"
:
space:" "
ident:"theme"
(
space:"\n"
space:"    "
string:"\"fontFamily.mono\""
,
space:"\n"
space:"    "
ident:"ui-monospace"
,
space:"\n"
space:"    "
ident:"SFMono-Regular"
,
space:"\n"
space:"    "
ident:"Menlo"
,
space:"\n"
space:"    "
ident:"Monaco"
,
space:"\n"
space:"    "
ident:"Consolas"
,
space:"\n"
space:"    "
string:"\"Liberation Mono\""
,
space:"\n"
space:"    "
string:"\"Courier New\""
,
space:"\n"
space:"    "
ident:"monospace"
space:"\n"
space:"  "
)
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"font-feature-settings"
:
space:" "
ident:"theme"
(
space:"\n"
space:"    "
string:"\"fontFamily.mono[1].fontFeatureSettings\""
,
space:"\n"
space:"    "
ident:"normal"
space:"\n"
space:"  "
)
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"font-variation-settings"
:
space:" "
ident:"theme"
(
space:"\n"
space:"    "
string:"\"fontFamily.mono[1].fontVariationSettings\""
,
space:"\n"
space:"    "
ident:"normal"
space:"\n"
space:"  "
)
;
space:" "
comment:"/* 3 */"
space:"\n"
space:"  "
ident:"font-size"
:
space:" "
number:"1"
ident:"em"
;
space:" "
comment:"/* 4 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nAdd the correct font size in all browsers.\n*/"
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
comment:"/*\nPrevent `sub` and `sup` elements from affecting the line height in all browsers.\n*/"
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
comment:"/*\n1. Remove text indentation from table contents in Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=999088, https://bugs.webkit.org/show_bug.cgi?id=201297)\n2. Correct table border color inheritance in all Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=935729, https://bugs.webkit.org/show_bug.cgi?id=195016)\n3. Remove gaps between table borders by default.\n*/"
space:"\n"
space:"\n"
ident:"table"
space:" "
{
space:"\n"
space:"  "
ident:"text-indent"
:
space:" "
number:"0"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"border-color"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"border-collapse"
:
space:" "
ident:"collapse"
;
space:" "
comment:"/* 3 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\n1. Change the font styles in all browsers.\n2. Remove the margin in Firefox and Safari.\n3. Remove default padding in all browsers.\n*/"
space:"\n"
space:"\n"
ident:"button"
,
space:"\n"
ident:"input"
,
space:"\n"
ident:"optgroup"
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
ident:"font-family"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"font-feature-settings"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"font-variation-settings"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"font-size"
:
space:" "
number:"100"
percent:"%"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"font-weight"
:
space:" "
ident:"inherit"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"line-height"
:
space:" "
ident:"inherit"
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
space:"  "
ident:"padding"
:
space:" "
number:"0"
;
space:" "
comment:"/* 3 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nRemove the inheritance of text transform in Edge and Firefox.\n*/"
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
ident:"text-transform"
:
space:" "
ident:"none"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\n1. Correct the inability to style clickable types in iOS and Safari.\n2. Remove default button styles.\n*/"
space:"\n"
space:"\n"
ident:"button"
,
space:"\n"
[
ident:"type"
=
string:"\"button\""
]
,
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
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"background-color"
:
space:" "
ident:"transparent"
;
space:" "
comment:"/* 2 */"
space:"\n"
space:"  "
ident:"background-image"
:
space:" "
ident:"none"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nUse the modern Firefox focus style for all focusable elements.\n*/"
space:"\n"
space:"\n"
:
ident:"-moz-focusring"
space:" "
{
space:"\n"
space:"  "
ident:"outline"
:
space:" "
ident:"auto"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nRemove the additional `:invalid` styles in Firefox. (https://github.com/mozilla/gecko-dev/blob/2f9eacd9d3d995c937b4251a5557d95d494c9be1/layout/style/res/forms.css#L728-L737)\n*/"
space:"\n"
space:"\n"
:
ident:"-moz-ui-invalid"
space:" "
{
space:"\n"
space:"  "
ident:"box-shadow"
:
space:" "
ident:"none"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nAdd the correct vertical alignment in Chrome and Firefox.\n*/"
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
comment:"/*\nCorrect the cursor style of increment and decrement buttons in Safari.\n*/"
space:"\n"
space:"\n"
::
ident:"-webkit-inner-spin-button"
,
space:"\n"
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
comment:"/*\n1. Correct the odd appearance in Chrome and Safari.\n2. Correct the outline style in Safari.\n*/"
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
comment:"/*\nRemove the inner padding in Chrome and Safari on macOS.\n*/"
space:"\n"
space:"\n"
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
comment:"/*\n1. Correct the inability to style clickable types in iOS and Safari.\n2. Change font properties to `inherit` in Safari.\n*/"
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
space:"\n"
comment:"/*\nAdd the correct display in Chrome and Safari.\n*/"
space:"\n"
space:"\n"
ident:"summary"
space:" "
{
space:"\n"
space:"  "
ident:"display"
:
space:" "
ident:"list-item"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nRemoves the default spacing and border for appropriate elements.\n*/"
space:"\n"
space:"\n"
ident:"blockquote"
,
space:"\n"
ident:"dl"
,
space:"\n"
ident:"dd"
,
space:"\n"
ident:"h1"
,
space:"\n"
ident:"h2"
,
space:"\n"
ident:"h3"
,
space:"\n"
ident:"h4"
,
space:"\n"
ident:"h5"
,
space:"\n"
ident:"h6"
,
space:"\n"
ident:"hr"
,
space:"\n"
ident:"figure"
,
space:"\n"
ident:"p"
,
space:"\n"
ident:"pre"
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
ident:"fieldset"
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
ident:"legend"
space:" "
{
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
ident:"ol"
,
space:"\n"
ident:"ul"
,
space:"\n"
ident:"menu"
space:" "
{
space:"\n"
space:"  "
ident:"list-style"
:
space:" "
ident:"none"
;
space:"\n"
space:"  "
ident:"margin"
:
space:" "
number:"0"
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
comment:"/*\nReset default styling for dialogs.\n*/"
space:"\n"
ident:"dialog"
space:" "
{
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
comment:"/*\nPrevent resizing textareas horizontally by default.\n*/"
space:"\n"
space:"\n"
ident:"textarea"
space:" "
{
space:"\n"
space:"  "
ident:"resize"
:
space:" "
ident:"vertical"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\n1. Reset the default placeholder opacity in Firefox. (https://github.com/tailwindlabs/tailwindcss/issues/3300)\n2. Set the default placeholder color to the user's configured gray 400 color.\n*/"
space:"\n"
space:"\n"
ident:"input"
::
ident:"placeholder"
,
space:"\n"
ident:"textarea"
::
ident:"placeholder"
space:" "
{
space:"\n"
space:"  "
ident:"opacity"
:
space:" "
number:"1"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"color"
:
space:" "
ident:"theme"
(
string:"\"colors.gray.400\""
,
space:" "
#
ident:"9ca3af"
)
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nSet the default cursor for buttons.\n*/"
space:"\n"
space:"\n"
ident:"button"
,
space:"\n"
[
ident:"role"
=
string:"\"button\""
]
space:" "
{
space:"\n"
space:"  "
ident:"cursor"
:
space:" "
ident:"pointer"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nMake sure disabled buttons don't get the pointer cursor.\n*/"
space:"\n"
:
ident:"disabled"
space:" "
{
space:"\n"
space:"  "
ident:"cursor"
:
space:" "
ident:"default"
;
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\n1. Make replaced elements `display: block` by default. (https://github.com/mozdevs/cssremedy/issues/14)\n2. Add `vertical-align: middle` to align replaced elements more sensibly by default. (https://github.com/jensimmons/cssremedy/issues/14#issuecomment-634934210)\n   This can trigger a poorly considered lint error in some tools but is included by design.\n*/"
space:"\n"
space:"\n"
ident:"img"
,
space:"\n"
ident:"svg"
,
space:"\n"
ident:"video"
,
space:"\n"
ident:"canvas"
,
space:"\n"
ident:"audio"
,
space:"\n"
ident:"iframe"
,
space:"\n"
ident:"embed"
,
space:"\n"
ident:"object"
space:" "
{
space:"\n"
space:"  "
ident:"display"
:
space:" "
ident:"block"
;
space:" "
comment:"/* 1 */"
space:"\n"
space:"  "
ident:"vertical-align"
:
space:" "
ident:"middle"
;
space:" "
comment:"/* 2 */"
space:"\n"
}
space:"\n"
space:"\n"
comment:"/*\nConstrain images and videos to the parent width and preserve their intrinsic aspect ratio. (https://github.com/mozdevs/cssremedy/issues/14)\n*/"
space:"\n"
space:"\n"
ident:"img"
,
space:"\n"
ident:"video"
space:" "
{
space:"\n"
space:"  "
ident:"max-width"
:
space:" "
number:"100"
percent:"%"
;
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
comment:"/* Make elements with the HTML hidden attribute stay hidden by default */"
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