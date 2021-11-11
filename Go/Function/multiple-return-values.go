package main

import (
	"fmt"
)

func main() {
	// Print the values returned from the function
	a, b, c := multipleReturnValues()
	fmt.Println(a, b, c)
}

// Take in multiple values and return them
func multipleReturnValues() (int, int, int) {
	return 1, 2, 3
}
