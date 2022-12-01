package main

import (
	"fmt"
)

func main() {
	// Create a random map with random data.
	randomMap := map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
	}
	// Get the length of values in the map.
	fmt.Println(amountOfValuesInMap(randomMap))
}

// Get the ammount of values in a map and return it.
func amountOfValuesInMap(providedMap map[string]string) int {
	// Initialize the length variable.
	var valueLength int
	// Loop through the map and increment the length variable.
	for _, mapValue := range providedMap {
		if mapValue != "" {
			valueLength = valueLength + 1
		}
	}
	// Return the length.
	return valueLength
}
