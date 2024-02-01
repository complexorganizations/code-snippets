package main

import (
	"fmt"
	"strings"
)

func main() {
	// Remove a given suffix from the given string.
	fmt.Println(removeSuffixFromString("Hello, World!", "!"))
}

// Remove a given suffix from the given string.
func removeSuffixFromString(content string, suffix string) string {
	return strings.TrimSuffix(content, suffix)
}
