package main

import (
	"fmt"
)

func main() {
	// Check if the primary value is less than or equals to the secondary value
	fmt.Println(lessThanOrEqualToOperator(1, 2))
}

// Check if the primary value is less than or equals to the secondary value and retrun a bool
func lessThanOrEqualToOperator(primary int, secondary int) bool {
	return primary <= secondary
}
