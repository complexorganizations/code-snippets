package main

import (
	"fmt"
	"strings"
)

func main() {
	// Check if a given string is whitespaces only.
	fmt.Println(isStringWhitespacesOnly("	"))
}

// Check if a given string is whitespaces only.
func isStringWhitespacesOnly(content string) bool {
	return len(strings.TrimSpace(content)) == 0
}
