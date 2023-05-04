package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings.
	randomSlice := []string{"A", "B", "C", "D", "E"}
	// Get the last element of the slice.
	fmt.Println(lastElementOfSlice(randomSlice))
}

// Get the last element of a slice.
func lastElementOfSlice(slice []string) string {
	return slice[len(slice)-1]
}
