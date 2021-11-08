package main

import (
	"fmt"
)

func main() {
	// Create a slice of random names.
	randomNames := []string{"John", "Paul", "George", "Ringo"}
	// Reverse the slice.
	fmt.Println(reverseSlice(randomNames))
}

// Reverse a slice and return the slice.
func reverseSlice(slice []string) []string {
	// Create an empty slice to store the reversed values.
	reversedSlice := make([]string, len(slice))
	// Loop through the slice and append the values to the new slice.
	for i := 0; i < len(slice); i++ {
		reversedSlice[i] = slice[len(slice)-1-i]
	}
	// Return the reversed slice.
	return reversedSlice
}