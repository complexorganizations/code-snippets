package main

import (
	"fmt"
)

func main() {
	// Split a byte array and get all the values after a given index.
	fmt.Printf("%s", splitByteSliceGetValuesAfterIndex([]byte("Hello World"), 6))
}

// Split a byte array and get all the values after a given index.
func splitByteSliceGetValuesAfterIndex(content []byte, index int) []byte {
	return content[index:]
}
