package main

import (
	"fmt"
	"strings"
)

func main() {
	// Check if a given string has a given suffix.
	fmt.Println(doesStringHaveGivenSuffix("Hello, World!", "!"))
}

// Check if a given string has a given suffix.
func doesStringHaveGivenSuffix(content string, suffix string) bool {
	return strings.HasSuffix(content, suffix)
}
