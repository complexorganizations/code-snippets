package main

import (
	"fmt"
)

func main() {
	// Get the percentage of a given number.
	fmt.Println(getPercentageOfNumber(250, 15))
}

// Get the percentage of a given number.
func getPercentageOfNumber(number float64, percentage float64) float64 {
	return number / 100 * percentage
}
