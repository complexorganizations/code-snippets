package main

import (
	"fmt"
)

func main() {
	// Convert int to string.
	fmt.Println(convertIntToString(10))
}

// Convert a int to a string and than return it.
func convertIntToString(variable int) string {
	return string(variable)
}
