package main

import (
	"crypto/rand"
	"fmt"
	"log"
)

func main() {
	// Generate a random uuid.
	fmt.Println(uniqueUUIDGenerator())
}

// Generate a random uuid and return it as a string.
func uniqueUUIDGenerator() string {
	randomBytes := make([]byte, 16)
	_, err := rand.Read(randomBytes)
	if err != nil {
		log.Fatalln(err)
	}
	return fmt.Sprintf("%x-%x-%x-%x-%x", randomBytes[0:4], randomBytes[4:6], randomBytes[6:8], randomBytes[8:10], randomBytes[10:])
}
