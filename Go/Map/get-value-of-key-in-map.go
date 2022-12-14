package main

import (
	"fmt"
)

func main() {
	// Create a map with a key of type string which is a color and a value of type string which is a fruit.
	randomUserGeneratedMap := map[string]string{
		"red":   "apple",
		"green": "banana",
		"white": "pineapple",
	}
	fmt.Println(getValueFromMap(randomUserGeneratedMap, "red"))
}

// Get the value of a given key from the map and return the value.
func getValueFromMap(mapToSearch map[string]string, keyToFind string) string {
	// Get the value of the key from the map.
	valueOfKey := mapToSearch[keyToFind]
	// Return the value of the key.
	return valueOfKey
}
