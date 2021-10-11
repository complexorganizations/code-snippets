package main

import (
	"fmt"
	"math"
)

func main() {
	// Add two numbers together and then return the sum.
	fmt.Println(addNumbers(1, 2))
	// Subtract two numbers and then return the difference.
	fmt.Println(subtractNumbers(4, 2))
	// Multiply two numbers and then return the product.
	fmt.Println(multiplyNumbers(4, 2))
	// Divide two numbers and then return the quotient.
	fmt.Println(divideNumbers(4, 2))
	// Modulo two numbers and then return the remainder.
	fmt.Println(moduloNumbers(4, 2))
	// Get the square root of a number and then return the square root.
	fmt.Println(squareRootNumbers(4))
}

// Add two numbers together and then return the sum.
func addNumbers(primary int, secondary int) int {
	return primary + secondary
}

// Subtract two numbers and then return the difference.
func subtractNumbers(primary int, secondary int) int {
	return primary - secondary
}

// Multiply two numbers and then return the product.
func multiplyNumbers(primary int, secondary int) int {
	return primary * secondary
}

// Divide two numbers and then return the quotient.
func divideNumbers(primary int, secondary int) int {
	return primary / secondary
}

// Modulo two numbers and then return the remainder.
func moduloNumbers(primary int, secondary int) int {
	return primary % secondary
}

// Get the square root of a number and then return the square root.
func squareRootNumbers(primary float64) float64 {
	return math.Sqrt(primary)
}
