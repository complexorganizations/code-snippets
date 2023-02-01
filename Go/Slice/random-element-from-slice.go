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
	someRandomNumber, err := rand.Int(rand.Reader, big.NewInt(int64(len(slice))))
	if err != nil {
		log.Fatalln(err)
	}
	return slice[someRandomNumber.Int64()]
}
