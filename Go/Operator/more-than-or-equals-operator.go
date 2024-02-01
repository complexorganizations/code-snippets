package main

import (
	"fmt"
)

func main() {
	// Check if the primary value is more than or equal to second value.
	fmt.Println(moreThanOrEqualToOperator(10, 5))
}

// Check if the primary value is more than or equal to second value and return a bool.
func moreThanOrEqualToOperator(primary, second int) bool {
	return primary >= second
}
