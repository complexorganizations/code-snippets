package main

import (
	"fmt"
)

func main() {
	// Get the modulo of two numbers
	fmt.Println(moduloTwoNumbers(11, 3))
}

// Get the Modulo of two numbers and return the result
func moduloTwoNumbers(primary int, secondary int) int {
	return primary % secondary
}
