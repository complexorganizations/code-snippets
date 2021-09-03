package main

import (
	"fmt"
)

func main() {
	// Single return value
	fmt.Println(addTwoNumber(1))
	// Multiple return values
	fmt.Println(multipleReturnValues())
	firstValue, _ := multipleReturnValues()
	fmt.Println(firstValue)
	_, secondValue := multipleReturnValues()
	fmt.Println(secondValue)
}

// Make the function take a variable number of arguments
func addNumbers(numbers int, moreNumbers int) int {
	return numbers + moreNumbers
}

// Single return value
func addTwoNumber(firstNumber int) int {
	return firstNumber + 1
}

// Multiple return values
func multipleReturnValues() (int, int) {
	return 1, 2
}
