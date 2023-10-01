package main

import (
	"fmt"
)

func main() {
	// Create a random map with random values.
	randomMap := map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
	}
	// Get the key from the value in the map.
	fmt.Println(getKeyFromValueInMap(randomMap, "value2"))
}

// Get the key from the value in a map and return the key.
func getKeyFromValueInMap(providedMap map[string]string, providedValue string) string {
	for key, value := range providedMap {
		if value == providedValue {
			return key
		}
	}
	return "-1"
}
