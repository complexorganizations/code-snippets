package main

import (
	"fmt"
	"strings"
)

func main() {
	// Convert a string to all lowercase.
	fmt.Println(stringToLowerCase("Hello, World!"))
}

// Convert a string to all lowercase.
func stringToLowerCase(content string) string {
	return strings.ToLower(content)
}
