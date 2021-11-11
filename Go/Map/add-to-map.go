package main

import (
	"fmt"
)

func main() {
	// Create a map with a key of type string with a value of type string.
	randomMap := make(map[string]string)
	// Add a key-value pair to the map.
	fmt.Println(addPairToMap(randomMap, "Name", "John"))
}

// Add a key-value pair to the map.
func addPairToMap(providedMap map[string]string, key string, value string) map[string]string {
	providedMap[key] = value
	return providedMap
}
