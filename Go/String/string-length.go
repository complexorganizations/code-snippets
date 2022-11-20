package main

import (
	"fmt"
)

func main() {
	// Length of the string.
	fmt.Println(stringLength("Hello World!"))
}

// Get the length of a string and return it.
func stringLength(content string) int {
	return len(content)
}
