package main

import (
	"fmt"
)

func main() {
	// Multiple arguments
	multipleArguments("Hello", "World", "!")
}

// Take in multiple arguments
func multipleArguments(first string, second string, third string) {
	fmt.Println(first, second, third)
}
