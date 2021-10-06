package main

import (
	"fmt"
)

func main() {
	defer fmt.Printf("World!")
	// This line will run before the defer statement
	fmt.Printf("Hello, ")
}
