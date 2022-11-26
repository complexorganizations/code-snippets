package main

import (
	"fmt"
)

func main() {
	// Create a simple map with a string as key and value as key.
	userGeneratedMap := map[string]string{"FirstName": "John", "LastName": "Doe"}
	// Remove a key-value pair from the map.
	fmt.Println(removeFromMap(userGeneratedMap, "FirstName"))
}

// Remove a key-value pair from a map and return the map.
func removeFromMap(userGeneratedMap map[string]string, key string) map[string]string {
	// Remove the key-value pair from the map.
	delete(userGeneratedMap, key)
	// Return the map.
	return userGeneratedMap
}
