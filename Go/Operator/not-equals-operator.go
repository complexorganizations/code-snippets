package main

import (
	"fmt"
)

func main() {
	// Check if two values are not equal to each other and return a bool.
	fmt.Println(notEqualsOperator(1, 2))
}

// Check if two values are not equal to each other and return a bool.
func notEqualsOperator(primary int, secondary int) bool {
	return primary != secondary
}
