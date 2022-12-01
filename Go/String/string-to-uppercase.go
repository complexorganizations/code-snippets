package main

import (
	"fmt"
	"strings"
)

func main() {
	// Convert a string to all uppercase.
	fmt.Println(stringToUpperCase("Hello, World!"))
}

// Convert a string to all uppercase.
func stringToUpperCase(content string) string {
	return strings.ToUpper(content)
}
