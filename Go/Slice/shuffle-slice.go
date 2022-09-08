package main

import (
	"crypto/rand"
	"fmt"
	"log"
	"math/big"
)

func main() {
	// Create a random slice of names.
	randomSlice := []string{"James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph", "Thomas", "Charles"}
	// Shuffle the slice.
	fmt.Println(shuffleSlice(randomSlice))
}

// Shuffle the slice and return it.
func shuffleSlice(slice []string) []string {
	for i := len(slice) - 1; i > 0; i-- {
		slice[i], slice[secureRandomInt(int64(i))] = slice[secureRandomInt(int64(i))], slice[i]
	}
	return slice
}

// Generate a random int between 0 and max number and reutn it.
func secureRandomInt(max int64) int {
	someRandomNumber, err := rand.Int(rand.Reader, big.NewInt(max))
	if err != nil {
		log.Fatalln(err)
	}
	return int(someRandomNumber.Int64())
}
