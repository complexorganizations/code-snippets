package main

import "fmt"

func main() {
	// Create a slice of random data.
	randomNumbers := []int{0, 1, 2, 3, 4}
	// Get the smallest number in a slice.
	fmt.Println(getSmallestNumberInSlice(randomNumbers))
}

// Get the smallest number in a given slice.
func getSmallestNumberInSlice(slice []int) int {
	var smallestNumber int
	for _, value := range slice {
		if value < smallestNumber {
			smallestNumber = value
		}
	}
	return smallestNumber
}
