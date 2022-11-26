package main

import (
	"fmt"
)

func main() {
	// Count how many bytes are in a byte slice.
	fmt.Println(bytesSliceCounter([]byte("Hello, World!")))
}

// Count the ammount of bytes in a byte slice and return it.
func bytesSliceCounter(content []byte) int {
	return len(content)
}
