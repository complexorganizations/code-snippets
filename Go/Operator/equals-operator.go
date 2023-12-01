package main

import (
	"fmt"
)

func main() {
	// Check if two values are the same and return a bool.
	fmt.Println(equalsOperator(1, 1))
}

// Check if two values are the same and return a bool.
func equalsOperator(primary int, secondary int) bool {
	return primary == secondary
}
