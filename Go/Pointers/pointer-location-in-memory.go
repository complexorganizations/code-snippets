package main

import "fmt"

func main() {
	// Get the variables location in memory.
	fmt.Println(variableLocationInMemory("Hello, World!"))
}

// Get the memory location of a variable.
func variableLocationInMemory(content interface{}) *interface{} {
	return &content
}
