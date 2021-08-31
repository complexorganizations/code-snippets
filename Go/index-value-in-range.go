package main

import (
	"fmt"
)

func main() {
	randomString := []string{"apple", "jesus", "map", "china", "ass", "bees"}
	index := arrayContains("map", randomString)
	fmt.Println(index)
}

// Check if the array contains the value.
func arrayContains(cointains string, originalArray []string) int {
	for indexValue, value := range originalArray {
		if value == cointains {
			return indexValue
		}
	}
	return 0
}
