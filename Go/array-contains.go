package main

import (
	"fmt"
)

func main() {
	randomString := []string{"apple", "jesus", "map", "china", "ass", "bees"}
	if arrayContains("apple", randomString) {
		fmt.Println(true)
	} else {
		fmt.Println(false)
	}
}

// Check if the array contains the value.
func arrayContains(cointains string, originalArray []string) bool {
	for _, value := range originalArray {
		if value == cointains {
			return true
		}
	}
	return false
}
