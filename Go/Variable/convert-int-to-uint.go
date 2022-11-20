package main

import (
	"fmt"
)

func main() {
	// Convert int to uint.
	fmt.Println(convertIntToUint(10))
}

// Convert int to uint and return it.
func convertIntToUint(variable int) uint {
	return uint(variable)
}
