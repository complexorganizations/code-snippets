package main

import "fmt"

func main() {
	// Create a slice of integers
	randomInts := []int{1, 2, 4, 5}
	// Get the missing number in the slice
	fmt.Println(getMissingIntegerInSlice(randomInts))
}

// Get the missing number in a given integer array
func getMissingIntegerInSlice(slice []int) []int {
	// Get the smallest and biggest number in the slice
	smallestNumber := getSmallestNumberInSlice(slice)
	biggestNumber := getBiggestNumberInSlice(slice)
	var missingNumber []int
	for tempNumber := smallestNumber; tempNumber <= biggestNumber; tempNumber++ {
		if !sliceContains(slice, tempNumber) {
			missingNumber = append(missingNumber, tempNumber)
		}
	}
	return missingNumber
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

// Get the biggest number in a given slice.
func getBiggestNumberInSlice(slice []int) int {
	biggestNumber := slice[0]
	for _, value := range slice {
		if value > biggestNumber {
			biggestNumber = value
		}
	}
	return biggestNumber
}

// Check if the slice contains a value and return a bool.
func sliceContains(slice []int, cointains int) bool {
	for _, value := range slice {
		if value == cointains {
			return true
		}
	}
	return false
}
