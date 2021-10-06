package main

import (
	"fmt"
)

func main() {
	// == Operator: Checks if two values are equal
	fmt.Println(equalsOperator(1, 1))
	// != Operator: Checks if two values are not equal
	fmt.Println(notEqualsOperator(1, 1))
	// < Operator: Checks if the first value is less than the second value
	fmt.Println(lessThanOperator(1, 2))
	// > Operator: Checks if the first value is greater than the second value
	fmt.Println(greaterThanOperator(2, 1))
	// <= Operator: Checks if the first value is less than or equal to the second value
	fmt.Println(lessThanOrEqualToOperator(1, 1))
	// >= Operator: Checks if the first value is greater than or equal to the second value
	fmt.Println(greaterThanOrEqualToOperator(2, 1))
}

// A simple example of a equals operator
func equalsOperator(firstValue int, secondValue int) bool {
	return firstValue == secondValue
}

// A simple example of a not equals operator
func notEqualsOperator(firstValue int, secondValue int) bool {
	return firstValue != secondValue
}

// A simple example of a less than operator
func lessThanOperator(firstValue int, secondValue int) bool {
	return firstValue < secondValue
}

// A simple example of a greater than operator
func greaterThanOperator(firstValue int, secondValue int) bool {
	return firstValue > secondValue
}

// A simple example of a less than or equal to operator
func lessThanOrEqualToOperator(firstValue int, secondValue int) bool {
	return firstValue <= secondValue
}

// A simple example of a greater than or equal to operator
func greaterThanOrEqualToOperator(firstValue int, secondValue int) bool {
	return firstValue >= secondValue
}
