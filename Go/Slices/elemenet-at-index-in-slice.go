package main

import (
	"fmt"
)

func main() {
	// Create a random slice of country names.
	randomCountry := []string{"India", "China", "USA", "Russia", "Japan"}
	// Get the element at index 2.
	fmt.Println(getElementAtIndex(randomCountry, 2))
}

// Get the element at a certain index in the slice and returnt the elemetnt.
func getElementAtIndex(slice []string, index int) string {
	return slice[index]
}