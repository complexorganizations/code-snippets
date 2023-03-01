package main

import (
	"fmt"
	"sort"
)

func main() {
	// Create a slice of strings
	randomSlice := []string{"y", "s", "n", "k", "f", "a", "t", "v", "w", "p", "u", "b", "r", "m", "o", "x", "h", "q", "c", "d", "z", "g", "j", "e", "i", "l"}
	// Sort the slice and than print it.
	fmt.Println(sortSlice(randomSlice))
}

// Sort the slice of strings and return the sorted slice
func sortSlice(slice []string) []string {
	sort.Strings(slice)
	return slice
}
