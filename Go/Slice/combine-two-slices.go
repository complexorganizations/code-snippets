package main

import (
	"fmt"
)

func main() {
	// Slice one of random elements.
	firstSlice := []string{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j"}
	// Slice two of random elements.
	secondSlice := []string{"k", "l", "m", "n", "o", "p", "q", "r", "s", "t"}
	// Combine the two slices together.
	fmt.Println(combineMultipleSlices(firstSlice, secondSlice))
}

// Combine two slices together and return the new slice.
func combineMultipleSlices(sliceOne []string, sliceTwo []string) []string {
	var combinedSlice []string
	combinedSlice = append(sliceOne, sliceTwo...)
	return combinedSlice
}
