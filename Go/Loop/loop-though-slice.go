package main

import (
	"fmt"
)

func main() {
	// Create a slice of random data.
	randomData := []string{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	for index, value := range randomData {
		fmt.Println(index, value)
	}
}
