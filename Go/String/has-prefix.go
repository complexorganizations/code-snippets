package main

import (
	"fmt"
	"strings"
)

func main() {
	// Check if the string contains a specified prefix.
	fmt.Println(checkStringCointansPrefix("Golang", "Go"))
}

// Check if the string contains a specified prefix.
func checkStringCointansPrefix(content string, prefix string) bool {
	return strings.HasPrefix(content, prefix)
}
