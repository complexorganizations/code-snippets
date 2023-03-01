package main

import (
	"fmt"
)

func main() {
	// Create a slice of strings
	var randomSlice = []string{"Hello", "World", "Go", "Lang"}
	// Get the index value of an element in the slice.
	fmt.Println(indexOfElementInSlice(randomSlice, "Go"))

}

// Get the index value of an element in a slice and return the index value
func indexOfElementInSlice(slice []string, element string) int {
	// Loop through the slice
	for index, value := range slice {
		// Check if the element is equal to the value
		if element == value {
			// Return the index value
			return index
		}
	}
	// Return -1 if the element is not found
	return -1
}
