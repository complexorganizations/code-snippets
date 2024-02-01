package main

import "fmt"

func main() {
	// Create a slice of ints.
	randomData := []float64{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	// Get the median of the slice.
	fmt.Println(getMedianOfIntsInSlice(randomData))
}

// Get the median of a slice of ints.
func getMedianOfIntsInSlice(slice []float64) float64 {
	if len(slice)%2 == 0 {
		return (slice[len(slice)/2-1] + slice[len(slice)/2]) / 2
	}
	return slice[len(slice)/2]
}
