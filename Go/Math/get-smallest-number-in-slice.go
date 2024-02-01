package main

import "fmt"

func main() {
	// Create a slice of random data.
	randomNumbers := []int{4, 3, 2, 1}
	// Get the smallest number in a slice.
	fmt.Println(getSmallestNumberInSlice(randomNumbers))
}

// Get the smallest number in a given slice.
func getSmallestNumberInSlice(slice []int) int {
	smallestNumber := slice[0]
	for _, value := range slice {
		if value < smallestNumber {
			smallestNumber = value
		}
	}
	return smallestNumber
}
