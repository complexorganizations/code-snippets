package main

import (
	"fmt"
)

func main() {
	// Create a map with a key of type string with a value of type string.
	randomMap := make(map[string]string)
	// Add a key-value pair to the map.
	fmt.Println(addKeyValueToMap(randomMap, "Name", "John"))
}

// Add a key-value pair to the given map.
func addKeyValueToMap(providedMap map[string]string, key string, value string) map[string]string {
	providedMap[key] = value
	return providedMap
}
