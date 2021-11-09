package main

import (
	"fmt"
)

func main() {
	// Check if two strings are the same.
	fmt.Println(stringsAreEqual("Hello", "Hello"))
}

// Check if two strings are the same.
func stringsAreEqual(primary string, secondary string) bool {
	return primary == secondary
}
