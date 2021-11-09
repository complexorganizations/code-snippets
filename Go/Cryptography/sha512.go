package main

import (
	"crypto/sha512"
	"fmt"
)

func main() {
	// Get the sha512 hash of the string
	fmt.Println(getSHA512OfString("Hello World!"))
}

// Get the sha512 hash of the string
func getSHA512OfString(content string) string {
	return fmt.Sprintf("%x", sha512.Sum512([]byte(content)))
}