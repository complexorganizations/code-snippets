package main

import (
	"crypto/rand"
	"fmt"
	"log"
)

func main() {
	// Generate a random byte array of length 10.
	fmt.Println(randomBytesArray(10))
}

// Generate a random byte array and return it.
func randomBytesArray(length int) []byte {
	randomBytes := make([]byte, length)
	_, err := rand.Read(randomBytes)
	if err != nil {
		log.Fatalln(err)
	}
	return randomBytes
}
