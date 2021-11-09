package main

import (
	"fmt"
)

func main() {
	// Subtract two numbers and return the result
	fmt.Println(subtractTwoNumbers(10, 5))
}

// Subtract two numbers and return the result
func subtractTwoNumbers(primary int, secondary int) int {
	return primary - secondary
}