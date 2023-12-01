package main

import (
	"crypto/rand"
	"fmt"
	"log"
)

func main() {
	// Generate a random string.
	fmt.Println(generateRandomString(10))
}

// Generate a random string of a given length.
func generateRandomString(length int) string {
	randomBytes := make([]byte, length/2)
	_, err := rand.Read(randomBytes)
	if err != nil {
		log.Fatalln(err)
	}
	return fmt.Sprintf("%x", randomBytes)
}
