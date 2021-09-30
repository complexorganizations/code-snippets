package main

import (
	"crypto/sha256"
	"crypto/sha512"
	"fmt"
)

func main() {
	// Get the sha256 of a string
	fmt.Println(getSHA256("Hello World"))
	// Get the sha512 of a string
	fmt.Println(getSHA512("Hello World"))
}


// Get the sha256 of a string
func getSHA256(content string) string {
	contentSHA256 := sha256.Sum256([]byte(content))
	return fmt.Sprintf("%x", contentSHA256)
}

// Get the sha512 of a string
func getSHA512(content string) string {
	contentSHA512 := sha512.Sum512([]byte(content))
	return fmt.Sprintf("%x", contentSHA512)
}
