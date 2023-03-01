package main

import (
	"fmt"
	"strings"
)

func main() {
	// Remove a given prefix from the given string.
	fmt.Println(removePrefixFromString("Hello, World!", "H"))
}

// Remove a given prefix from the given string.
func removePrefixFromString(content string, prefix string) string {
	return strings.TrimPrefix(content, prefix)
}
