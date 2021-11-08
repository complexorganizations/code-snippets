package main

import (
	"crypto/rand"
	"fmt"
)

func main() {
	// Generate a random byte array of length 10.
	fmt.Println(randomBytesArray(10))
}

// Generate a random byte array and return it.
func randomBytesArray(length int) []byte {
	randomBytes := make([]byte, length)
	rand.Read(randomBytes)
	return randomBytes
}
