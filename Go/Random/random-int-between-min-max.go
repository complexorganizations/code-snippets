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
	randomInt, err := rand.Int(rand.Reader, big.NewInt(int64(max)-int64(min)))
	if err != nil {
		log.Fatalln(err)
	}
	return int(randomInt.Int64()) + min
}
