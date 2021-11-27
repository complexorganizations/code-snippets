package main

import (
	"crypto/sha256"
	"fmt"
)

func main() {
	// Get the sha256 of a given string.
	fmt.Println(sha256OfGivenString("Hello World!"))
}

// Get the sha256 of a string
func sha256OfGivenString(content string) string {
	return fmt.Sprintf("%x", sha256.Sum256([]byte(content)))
}
