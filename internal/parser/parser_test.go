package parser_test

import (
	"testing"

	"github.com/matthewmueller/css/internal/parser"
	"github.com/matthewmueller/diff"
)

// var update = flag.Bool("update", false, "update golden files")

func equal(t *testing.T, input, expected string) {
	t.Helper()
	t.Run(input, func(t *testing.T) {
		t.Helper()
		actual := parser.Print(input, input)
		diff.TestString(t, actual, expected)
	})
}

// func equalAST(t *testing.T, input string, expected ast.Node) {
// 	t.Helper()
// 	t.Run(input, func(t *testing.T) {
// 		t.Helper()
// 		actual, err := parser.Parse(input, input)
// 		if err != nil {
// 			t.Fatal(err)
// 		}
// 		diff.Test(t, actual, expected)
// 	})
// }

// func equalFile(t *testing.T, path string) {
// 	t.Helper()
// 	t.Run(path, func(t *testing.T) {
// 		t.Helper()
// 		testdataPath := filepath.Join("..", "testdata")
// 		input, err := os.ReadFile(filepath.Join(testdataPath, path+".txt"))
// 		if err != nil {
// 			t.Fatal(err)
// 		}
// 		actual := parser.Print(path, string(input))
// 		expect, err := os.ReadFile(filepath.Join(testdataPath, path+".parse.txt"))
// 		if err != nil {
// 			if os.IsNotExist(err) {
// 				if err := os.WriteFile(filepath.Join(testdataPath, path+".parse.txt"), []byte(``), 0644); err != nil {
// 					t.Fatal(err)
// 				}
// 				return
// 			}
// 			t.Fatal(err)
// 		}
// 		if *update {
// 			if err := os.WriteFile(filepath.Join(testdataPath, path+".parse.txt"), []byte(actual), 0644); err != nil {
// 				t.Fatal(err)
// 			}
// 			return
// 		}
// 		diff.TestString(t, actual, string(expect))
// 	})
// }

func TestSample(t *testing.T) {
	equal(t, `body { margin: 0 }`, `body { margin: 0 }`)
}

func TestFile(t *testing.T) {
	// equalFile(t, "01-hello.tsx")
}
