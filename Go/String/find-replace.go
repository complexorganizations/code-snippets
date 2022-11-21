package main

import (
	"fmt"
	"strings"
)

func main() {
	// Find and replace in a string
	fmt.Println(findAndReplace("Hello World", "World", "Go"))
}

// Find and replace in a string
func findAndReplace(original string, find string, replace string) string {
	return strings.Replace(original, find, replace, -1)
}
