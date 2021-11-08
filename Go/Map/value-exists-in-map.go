package main

import (
	"fmt"
)

func main() {
	// Create a simple random map with random data.
	userProvidedMap := map[string]string{
		"name": "John",
		"age":  "30",
	}
	// Check if the value exists in the map.
	fmt.Println(valueExistsInMap(userProvidedMap, "John"))
}

// Check if a value exists in a map.
func valueExistsInMap(providedMap map[string]string, providedValue string) bool {
	for _, value := range providedMap {
		if value == providedValue {
			return true
		}
	}
	return false
}
