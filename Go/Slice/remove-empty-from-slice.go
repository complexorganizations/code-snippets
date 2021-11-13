package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings.
	randomSlice := []string{"A", "", "B", "", "C"}
	// Remove all the empty strings from the slice.
	fmt.Println(removeEmptyFromSlice(randomSlice))
}

// Remove all the empty strings from the slice and return it.
func removeEmptyFromSlice(slice []string) []string {
	for i, content := range slice {
		if len(content) == 0 {
			slice = append(slice[:i], slice[i+1:]...)
		}
	}
	return slice
}
