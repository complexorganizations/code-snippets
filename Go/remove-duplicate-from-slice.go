package main

import (
	"fmt"
)

func main() {
	// List of random strings.
	nameSlice := []string{
		"Cyrus",
		"Cyrus",
		"Bobby",
		"June",
		"James",
		"James",
		"Cyrus",
		"James",
		"Jeffery",
		"Bobby",
		"April",
		"April",
		"April",
	}
	uniqueNames := makeUnique(nameSlice)
	fmt.Println(uniqueNames)
}

// Make a unique array of strings.
func makeUnique(randomStrings []string) []string {
	var uniqueString []string
	for _, value := range randomStrings {
		if !arrayContains(value, uniqueString) {
			uniqueString = append(uniqueString, value)
		}
	}
	// return the array
	return uniqueString
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
