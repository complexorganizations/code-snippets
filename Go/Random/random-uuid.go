package main

import (
	"crypto/rand"
	"fmt"
)

func main() {
	// Generate a random uuid.
	fmt.Println(uniqueUUIDGenerator())
}

// Generate a random uuid and return it as a string.
func uniqueUUIDGenerator() string {
	return fmt.Sprintf("%x-%x-%x-%x-%x", randomBytesArray(4), randomBytesArray(2), randomBytesArray(2), randomBytesArray(2), randomBytesArray(6))
}

// Generate a random byte array and return it.
func randomBytesArray(length int) []byte {
	randomBytes := make([]byte, length)
	rand.Read(randomBytes)
	return randomBytes
}
