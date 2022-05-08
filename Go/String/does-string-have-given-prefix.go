package main

import (
	"fmt"
	"strings"
)

func main() {
	// CHeck if a given string has a given prefix.
	fmt.Println(doesStringHaveGivenPrefix("Hello, World!", "H"))
}

// Check if a given string has a given prefix.
func doesStringHaveGivenPrefix(content string, prefix string) bool {
	return strings.HasPrefix(content, prefix)
}
