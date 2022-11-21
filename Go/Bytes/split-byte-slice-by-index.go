package main

import (
	"fmt"
)

func main() {
	// Split a bytes slice by index.
	primaryValue, secondaryValue := splitByteSliceByIndex([]byte("Hello, World!"), 5)
	fmt.Printf("%s\n", primaryValue)
	fmt.Printf("%s\n", secondaryValue)
}

// Return a new slice after splitting a bytes slice by index.
func splitByteSliceByIndex(content []byte, index int) ([]byte, []byte) {
	return content[:index], content[index:]
}
