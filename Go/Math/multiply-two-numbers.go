package main

import (
	"fmt"
)

func main() {
	// Multiply two numbers and return the result
	fmt.Println(multiplyTwoNumbers(5, 6))
}

// Multiply two numbers and return the result
func multiplyTwoNumbers(primary int, secondary int) int {
	return primary * secondary
}
