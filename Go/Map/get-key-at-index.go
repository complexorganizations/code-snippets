package main

import (
	"fmt"
)

func main() {
	// Create a simple map with random data.
	var myMap = map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
		"key4": "value4",
		"key5": "value5",
	}
	// Get the key at index 2.
	fmt.Println(getKeyAtIndexInMap(myMap, 2))
}

// Get the key at a certain index.
func getKeyAtIndexInMap(providedMap map[string]string, index int) string {
	var counter int = 0
	// Loop through the map.
	for key, _ := range providedMap {
		// Check if the counter is equal to the index.
		if counter == index {
			// Return the key.
			return key
		}
		// Increment the counter.
		counter = counter + 1
	}
	// Return an empty string.
	return ""
}
