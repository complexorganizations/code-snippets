package main

import (
	"fmt"
)

func main() {
	// Generate a random map with random key values pair.
	simpleRandomMap := map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
	}
	// Get the length of a map.
	fmt.Println(lengthOfMap(simpleRandomMap))
}

// Get the length of a map and than return it.
func lengthOfMap(providedMap map[string]string) int {
	return len(providedMap)
}
