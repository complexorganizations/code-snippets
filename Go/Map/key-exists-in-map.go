package main

import (
	"fmt"
)

func main() {
	// Create a basic simple map.
	simpleMap := map[string]string{
		"key1": "value1",
		"key2": "value2",
	}
	// Check if a key exists in the map.
	fmt.Println(keyExistsInMap(simpleMap, "key1"))
}

// Check if a key exists in a map and return a bool
func keyExistsInMap(providedMap map[string]string, providedKey string) bool {
	for key := range providedMap {
		if key == providedKey {
			return true
		}
	}
	return false
}
