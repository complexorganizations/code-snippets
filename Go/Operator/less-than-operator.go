package main

import (
	"fmt"
)

func main() {
	// Check if the primary value is less than the secondary value
	fmt.Println(lessThanOperator(1, 2))
}

// Check if the primary value is less than the secondary value and return a bool
func lessThanOperator(primary int, secondary int) bool {
	return primary < secondary
}