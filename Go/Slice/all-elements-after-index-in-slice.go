package main

import (
	"fmt"
)

func main() {
	// Create a slice.
	slice := []string{"Apple", "Orange", "Plum", "Cherry", "Banana"}
	// Get the elements after the index.
	fmt.Println(allElementsAfterIndexInSlice(slice, 2))
}

// Get all the elements of the slice after the given index and return them.
func allElementsAfterIndexInSlice(slice []string, index int) []string {
	return slice[index:]
}
