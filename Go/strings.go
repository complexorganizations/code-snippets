package main

import (
	"fmt"
)

func main() {
	// Check if a string is empty
	fmt.Println(isEmpty("apple"))
	// Check if two strings are equal
	fmt.Println(twoStringEqual("apple", "apple"))
	// Remove a string from a slice
	sampleSlice := []string{"one", "two", "three"}
	fmt.Println(sampleSlice)
	newImprovedSlice := removeStringFromSlice(sampleSlice, "two")
	fmt.Println(newImprovedSlice)
}

// Check if a string is empty
func isEmpty(content string) bool {
	return len(content) == 0
}

// Check if two strings are equal
func twoStringEqual(firstString, secondString string) bool {
	if firstString == secondString {
		return true
	}
	return false
}

// Remove a string from a slice
func removeStringFromSlice(originalSlice []string, removeString string) []string {
	var newSlice []string
	for _, content := range originalSlice {
		if content == removeString {
			content = ""
		}
		if len(content) >= 1 {
			newSlice = append(newSlice, content)
		}
	}
	return newSlice
}
