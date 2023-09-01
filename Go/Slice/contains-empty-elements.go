package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings.
	randomSlice := []string{"A", "", "C", "", "E"}
	// Check if the slice contains empty elements.
	fmt.Println(sliceContainsEmptyElements(randomSlice))
}

// Check if the given slice contains empty elements.
func sliceContainsEmptyElements(slice []string) bool {
	for _, element := range slice {
		if len(element) == 0 {
			return true
		}
	}
	return false
}
