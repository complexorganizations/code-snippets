package main

import (
	"fmt"
)

func main() {
	// Call the function with a string argument.
	printInputValue("Hello World!")
}

// Take in a single argument and print it.
func printInputValue(content string) {
	fmt.Println(content)
}