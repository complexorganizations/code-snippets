package main

import (
	"fmt"
)

func main() {
	// Create a random slice.
	randomSlice := []string{"a", "a", "a", "b", "c", "d"}
	// Count how many times an element appears in a slice.
	fmt.Println(countElementInSlice(randomSlice, "a"))
}

// Count how many times an element appears in a slice.
func countElementInSlice(slice []string, element string) int {
	var counter int
	for _, element := range slice {
		if element == element {
			counter = counter + 1
		}
	}
	return counter
}
