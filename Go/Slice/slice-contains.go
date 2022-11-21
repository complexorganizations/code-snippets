package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings
	randomSlice := []string{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"}
	// Check if the slice contains a value
	fmt.Println(sliceContains(randomSlice, "A"))
}

// Check if the slice contains a value and return a bool.
func sliceContains(slice []string, cointains string) bool {
	for _, value := range slice {
		if value == cointains {
			return true
		}
	}
	return false
}
