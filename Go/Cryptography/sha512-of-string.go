package main

import (
	"crypto/sha512"
	"fmt"
)

func main() {
	// Get the sha512 hash of the string
	fmt.Println(getSHA512OfByteSlice([]byte("Hello World!")))
}

// Get the sha512 hash of the string
func getSHA512OfByteSlice(content []byte) string {
	return fmt.Sprintf("%x", sha512.Sum512(content))
}
