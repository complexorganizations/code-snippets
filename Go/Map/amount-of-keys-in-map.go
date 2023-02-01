package main

import (
	"fmt"
)

func main() {
	// Random Map.
	userGeneratedMap := map[string]string{
		"name":    "John",
		"surname": "Doe",
	}
	// Get the length of keys in the map.
	fmt.Println(lengthOfKeysInMap(userGeneratedMap))
}

// Get the length of keys in a map and return it.
func lengthOfKeysInMap(providedMap map[string]string) int {
	// Initialize the length variable.
	var keyLength int
	// Loop through the map and increment the length variable.
	for mapKey, _ := range providedMap {
		if mapKey != "" {
			keyLength = keyLength + 1
		}
	}
	// Return the length.
	return keyLength
}
