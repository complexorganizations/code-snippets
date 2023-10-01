package main

import (
	"fmt"
	"strings"
)

func main() {
	// Split a string prefix.
	fmt.Println(trimStringPrefix("Hello, World!", "Hello, "))
}

// Trim a string prefix.
func trimStringPrefix(content string, splitter string) string {
	return strings.TrimPrefix(content, splitter)
}
