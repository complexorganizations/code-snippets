package main

import (
	"fmt"
)

func main() {
	// Create a slice.
	randomSlice := []string{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	// Get all the elements in a given range in a given slice.
	fmt.Println(allElementsInIndexRangeFromSlice(randomSlice, 2, 5))
}

// Get all the elements in a given range in a given slice.
func allElementsInIndexRangeFromSlice(slice []string, startIndex int, endIndex int) []string {
	return slice[startIndex:endIndex]
}
