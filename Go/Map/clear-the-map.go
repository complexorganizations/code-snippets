package main

import (
	"fmt"
)

func main() {
	// Create a simple map with random data.
	randomMap := map[string]string{
		"key1": "value1",
		"key2": "value2",
		"key3": "value3",
	}
	// Remove everything from the map.
	fmt.Println(removeEverythingFromMap(randomMap))
}

// Remove everything from the map.
func removeEverythingFromMap(providedMap map[string]string) map[string]string {
	for key := range providedMap {
		delete(providedMap, key)
	}
	return providedMap
}
