package main

import (
	"fmt"
)

func main() {
	// Single return value
	fmt.Println(addTwoNumber(1, 9))
	// Multiple return values
	fmt.Println(multipleReturnValues())
	firstValue, _ := multipleReturnValues()
	fmt.Println(firstValue)
	_, secondValue := multipleReturnValues()
	fmt.Println(secondValue)
}

// Single return value
func addTwoNumber(firstNumber int, secondNumber int) int {
	return firstNumber + secondNumber
}

// Multiple return values
func multipleReturnValues() (int, int) {
	return 1, 2
}
