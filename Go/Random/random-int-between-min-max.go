package main

import (
	"crypto/rand"
	"fmt"
	"log"
	"math/big"
)

func main() {
	// Generate a random int between two numbers.
	fmt.Println(randomIntBetween(200, 220))
}

// Generate a random int between two numbers
func randomIntBetween(min int, max int) int {
	return generateRandomInt(int64(max-min)) + min
}

// Generate a random int between 0 and a given max
func generateRandomInt(max int64) int {
	randomInt, err := rand.Int(rand.Reader, big.NewInt(max))
	if err != nil {
		log.Fatalln(err)
	}
	return int(randomInt.Int64())
}
