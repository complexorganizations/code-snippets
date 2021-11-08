package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings
	var randomSlice []string
	// Append some values to the slice
	randomSlice = appendToSlice(randomSlice, "Hello")
}

// Append some string to a slice and than return the slice.
func appendToSlice(slice []string, content string) []string {
	// Append the content to the slice
	slice = append(slice, content)
	// Return the slice
	return slice
}