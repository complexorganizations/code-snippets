package main

import (
	"fmt"
)

func main() {
	intValue()
	stringValue()
}

// Integer
func intValue() {
	// Integer value
	valueOne := 1
	// Create a pointer to the int
	pointerOne := &valueOne
	// Print the pointer
	fmt.Println("pointerOne memory location", pointerOne)
	// Print the value of the pointer
	fmt.Println("Value of pointerOne:", *pointerOne)
}

// String
func stringValue() {
	// String value
	valueOne := "Hello"
	// Create a pointer to the string
	pointerOne := &valueOne
	// Print the pointer
	fmt.Println("pointerOne memory location", pointerOne)
	// Print the value of the pointer
	fmt.Println("Value of pointerOne:", *pointerOne)
}
