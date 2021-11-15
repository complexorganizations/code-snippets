package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings
	randomSlice := []string{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"}
	// Remove all the duplicates from the slice
	fmt.Println(removeDuplicatesFromSlice(randomSlice))
}

// Remove all the duplicates from a slice and return the slice.
func removeDuplicatesFromSlice(slice []string) []string {
	check := make(map[string]bool)
	var newReturnSlice []string
	for _, content := range slice {
		if !check[content] { {
			check[content] = true
			newReturnSlice = append(newReturnSlice, content)
		}
	}
	return newReturnSlice
}
