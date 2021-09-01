package main

import (
	"fmt"
)

func main() {
	// Multiple return values
	fmt.Println(multipleReturnValues())
	firstValue, _ := multipleReturnValues()
	fmt.Println(firstValue)
	_, secondValue := multipleReturnValues()
	fmt.Println(secondValue)
}

// Multiple return values
func multipleReturnValues() (int, int) {
	return 1, 2
}
