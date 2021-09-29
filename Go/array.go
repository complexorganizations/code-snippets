package main

import (
	"fmt"
	"sort"
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
	// Check if the array is empty
	fmt.Println(arrayIsEmpty(randomString))
	// Check if the array isnt empty
	fmt.Println(arrayIsntEmpty(randomString))
	// Remove all the duplicate elements in a array.
	fmt.Println(removeDuplicateElements(randomString))
	// Sort the array
	fmt.Println(sortList(randomString))
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

// Remove all the duplicate elements in a array.
func removeDuplicateElements(array []string) []string {
	var newArray []string
	for _, value := range array {
		if !arrayContains(value, newArray) {
			newArray = append(newArray, value)
		}
	}
	return newArray
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

// Check if the array is empty
func arrayIsEmpty(array []string) bool {
	if len(array) == 0 {
		return true
	}
	return false
}

// Check if the array isnt empty
func arrayIsntEmpty(array []string) bool {
	if len(array) == 0 {
		return false
	}
	return true
}

// Sort the array
func sortList(content []string) []string {
	sort.Strings(content)
	return content
}
