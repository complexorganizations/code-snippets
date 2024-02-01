package main

import "fmt"

func main() {
	// Reverse a given string.
	fmt.Println(reverseAString("Hello, World!"))
}

// Reverse a given string
func reverseAString(givenString string) string {
	var result string
	for _, value := range givenString {
		result = string(value) + result
	}
	return result
}
