package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings.
	randomSlice := []string{"a", "b", "c", "d", "e"}
	// Check if the slice is empty.
	fmt.Println(isSliceEmpty(randomSlice))
	// Remove all the values from slice.
	randomSlice = nil
	// Check if the slice is empty.
	fmt.Println(isSliceEmpty(randomSlice))
}

// Check if the slice is empty and return a bool.
func isSliceEmpty(slice []string) bool {
	return len(slice) == 0
}
