package main

import (
	"fmt"
)

func main() {
	// Create a slice
	randomSlice := []string{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	// Get all the elements before certain index.
	fmt.Println(allElementsBeforeIndexInSlice(randomSlice, 5))
}

// Get all the elements before a particular index in a slice
func allElementsBeforeIndexInSlice(slice []string, index int) []string {
	return slice[:index]
}
