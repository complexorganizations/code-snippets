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

func arrayContains(cointains string, originalArray []string) bool {
	for a := 0; a < len(originalArray); a++ {
		if originalArray[a] == cointains {
			return true
		}
	}
	return false
}
