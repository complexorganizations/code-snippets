package main

import (
	"fmt"
)

func main() {
	// Create an array of strings.
	randomString := []string{"apple", "jesus", "map", "china", "ass", "bees", "", ""}
	// Check if the array contains the value.
	if arrayContains("apple", randomString) {
		fmt.Println(true)
	}
	//
	for number, list := range randomString {
		// Number
		if number == 25 {
			fmt.Println("The content of number 25 is", list)
		}
		// Item
		if list == "P" {
			fmt.Println("The letter is", list)
		}
	}
	fmt.Println(randomString)
	// Get the index value of a item in a array
	fmt.Println(indexValueInArray("jesus", randomString))
	// Remove all the empty elements in a array.
	fmt.Println(removeEmptyElements(randomString))
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

// Get the index value of a item in a array
func indexValueInArray(cointains string, originalArray []string) int {
	for indexValue, value := range originalArray {
		if value == cointains {
			return indexValue
		}
	}
	return 0
}

// Remove all the empty elements in a array.
func removeEmptyElements(array []string) []string {
	var newArray []string
	for _, value := range array {
		if len(value) > 0 {
			newArray = append(newArray, value)
		}
	}
	return newArray
}
