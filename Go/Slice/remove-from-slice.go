package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings
	randomSlice := []string{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"}
	// Remove some elements from the slice
	newSlice := removeFromSlice(randomSlice, "A")
	fmt.Println(newSlice)
}

// Remove some value from a slice and return the slice.
func removeFromSlice(slice []string, content string) []string {
	for elementIndex, element := range slice {
		if element == content {
			slice = append(slice[:elementIndex], slice[elementIndex+1:]...)
		}
	}
	return slice
}
