package main

import (
	"crypto/rand"
	"fmt"
	"log"
	"math/big"
)

func main() {
	// Create a random slice of names
	randomNames := []string{"John", "Paul", "George", "Ringo"}
	// Get a random element from the slice
	fmt.Println(randomElementFromSlice(randomNames))
}

// Get a random element from the slice and return the element.
func randomElementFromSlice(slice []string) string {
	return slice[randomInt(int64(len(slice)))]
}

// Generate a random int between 0 and max number and reutn it.
func randomInt(max int64) int {
	someRandomNumber, err := rand.Int(rand.Reader, big.NewInt(max))
	if err != nil {
		log.Fatalln(err)
	}
	return int(someRandomNumber.Int64())
}
