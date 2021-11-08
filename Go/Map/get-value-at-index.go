package main

import (
	"fmt"
)

func main() {
	// Create a random map of key value pair.
	randomGeneratedMap := map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
	}
	// Get the value at index 2.
	fmt.Println(getValueAtIndex(randomGeneratedMap, 2))
}

// Get the value from the map at the given index.
func getValueAtIndex(providedMap map[string]string, index int) string {
	var counter int = 0
	// Loop through the map.
	for _, value := range providedMap {
		// Check if the counter is equal to the index.
		if counter == index {
			// Return the key.
			return value
		}
		// Increment the counter.
		counter = counter + 1
	}
	// Return an empty string.
	return "-1"
}
