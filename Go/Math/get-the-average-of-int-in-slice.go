package main

import "fmt"

func main() {
	// Create a slice of int
	randomData := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	// Get the average of int in slice of int
	fmt.Println(getAverageIntInSlice(randomData))
}

// Get the average of int in slice of int
func getAverageIntInSlice(slice []int) int {
	sum := 0
	for _, value := range slice {
		sum = sum + value
	}
	return sum / len(slice)
}
