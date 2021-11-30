package main

import "fmt"

func main() {
	// Create a slice of ints
	randomData := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	// Get the largest int in slice.
	fmt.Println(getLargestIntInSlice(randomData))
}

// Get the largest int in the slice
func getLargestIntInSlice(slice []int) int {
	biggestNumber := slice[0]
	for _, number := range slice {
		if number > biggestNumber {
			biggestNumber = number
		}
	}
	return biggestNumber
}
