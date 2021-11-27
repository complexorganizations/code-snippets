package main

import (
	"fmt"

	"golang.org/x/crypto/sha3"
)

func main() {
	// Get the sha256 of a given string using sha3
	fmt.Println(sha3Using512OfGivenString("Hello World!"))
}

// Get the hash of a string using SHA3-512
func sha3Using512OfGivenString(content string) string {
	return fmt.Sprintf("%x", sha3.Sum512([]byte(content)))
}
