package main

import (
	"fmt"
	"math"
)

func main() {
	// Get the square root of a number.
	fmt.Println(getSquareRoot(9))
}

// Get the square root of a given number.
func getSquareRoot(number float64) float64 {
	return math.Sqrt(number)
}
