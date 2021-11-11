package main

import (
	"fmt"
)

func main() {
	// Add two numbers and print the result
	fmt.Println(addTwoNumbers(1, 2))
}

// Add two numbers and return the result
func addTwoNumbers(primary int, secondary int) int {
	return primary + secondary
}
