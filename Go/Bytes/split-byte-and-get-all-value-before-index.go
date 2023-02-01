package main

import (
	"fmt"
)

func main() {
	// Split a byte slice and get all the values before an index.
	fmt.Printf("%s", splitByteAndGetAllValueBeforeIndex([]byte("Hello, World!"), 5))
}

// Split a byte slice and get all the values before the index
func splitByteAndGetAllValueBeforeIndex(content []byte, index int) []byte {
	return content[:index]
}
