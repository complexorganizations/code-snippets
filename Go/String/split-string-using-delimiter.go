package main

import (
	"fmt"
	"strings"
)

func main() {
	// Split a string into all substrings separated by a delimiter.
	fmt.Println(splitStringUsingDelimiter("a,b,c", ","))
}

// Split a string into all substrings separated by a delimiter.
func splitStringUsingDelimiter(content string, delimiter string) []string {
	return strings.Split(content, delimiter)
}
