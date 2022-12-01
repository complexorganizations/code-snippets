package main

import (
	"fmt"
)

func main() {
	// Check if the primary is greater than the secondary
	fmt.Println(moreThanOperator(5, 4))
}

// Check if the primary is greater than the secondary and return a bool
func moreThanOperator(primary int, secondary int) bool {
	return primary > secondary
}
