package main

import (
	"fmt"
)

func main() {
	// Create a map with a key of type string and value of type int.
	userMap := make(map[string]int)
	// Add key/value pairs to the map.
	addToMap(userMap, "One", 1)
	// Get the value for a key in the map.
	fmt.Println(getFromMap(userMap, "One"))
	// Get the key for a value in the map.
	fmt.Println(getKeyFromMap(userMap, 1))
	// Removing a key/value pair from the map.
	removeFromMap(userMap, "One")
}

// Add a key/value pair to the map.
func addToMap(userMap map[string]int, key string, value int) {
	userMap[key] = value
}

// Remove a key/value pair from the map.
func removeFromMap(userMap map[string]int, key string) {
	delete(userMap, key)
}

// Get the value for a key in the map.
func getFromMap(userMap map[string]int, key string) int {
	return userMap[key]
}

// Get the key for a value in the map.
func getKeyFromMap(userMap map[string]int, value int) string {
	for keyInMap, valueInMap := range userMap {
		if valueInMap == value {
			return keyInMap
		}
	}
	return ""
}
