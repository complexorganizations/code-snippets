package main

import (
	"fmt"
)

func main() {
	// Create a random slice.
	randomSlice := []string{"a", "b", "c"}
	// Check if the slice isnt empty.
	fmt.Println(sliceNotEmpty(randomSlice))
}

// Check if the slice isnt empty and return a bool.
func sliceNotEmpty(slice []string) bool {
	return len(slice) != 0
}
