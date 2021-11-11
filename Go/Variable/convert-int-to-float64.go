package main

import (
	"fmt"
)

func main() {
	// Convert the variable type from int to float64
	fmt.Println(convertIntToFloat64(10))
}

// Convert the variable type from anything to float64
func convertIntToFloat64(variable int) float64 {
	return float64(variable)
}
