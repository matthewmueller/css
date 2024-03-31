package css_test

import (
	"fmt"

	"github.com/matthewmueller/css"
)

func ExampleParse() {
	input := `@media screen and (min-width: 480px) {
		body {
			background-color: lightgreen;
		}
	}
	`
	ast, err := css.Parse("input.css", input)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(ast.String())
	// Output:
	// @media screen and (min-width: 480px) {
	//   body { background-color: lightgreen }
	// }
}
