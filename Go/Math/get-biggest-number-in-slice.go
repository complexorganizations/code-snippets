package main

import "fmt"

func main() {
	// Create a slice of random data.
	randomNumbers := []int{0, 1, 2, 3, 4}
	// Get the biggest number in a slice.
	fmt.Println(getBiggestNumberInSlice(randomNumbers))
}

// Get the biggest number in a given slice.
func getBiggestNumberInSlice(slice []int) int {
	var biggestNumber int
	for _, value := range slice {
		if value > biggestNumber {
			biggestNumber = value
		}
	}
	return biggestNumber
}
