package main

import "fmt"

func main() {
	// Create a slice of integers
	randomData := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	// Get the smallest integer in the slice
	fmt.Println(getSmallestIntInSlice(randomData))
}

// Get the smallest integer in a slice of integers
func getSmallestIntInSlice(slice []int) int {
	smallest := slice[0]
	for _, value := range slice {
		if value < smallest {
			smallest = value
		}
	}
	return smallest
}
