package main

import (
	"crypto/rand"
	"fmt"
	"log"
	"math/big"
)

func main() {
	// Generate a random bool.
	fmt.Println(generateRandomBool())
}

// Generate a random bool and than return it.
func generateRandomBool() bool {
	return generateRandomInt(2) == 1
}

// Generate a random int between 0 and a given max
func generateRandomInt(max int64) int {
	randomInt, err := rand.Int(rand.Reader, big.NewInt(max))
	if err != nil {
		log.Fatalln(err)
	}
	return int(randomInt.Int64())
}
