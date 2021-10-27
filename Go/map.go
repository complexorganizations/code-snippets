package main

import (
	"fmt"
)

func main() {
	// Create a map with a key of type string and value of type int.
	userMap := make(map[string]int)
	// Add key/value pairs to the map.
	addToMap(userMap, "One", 1)
	addToMap(userMap, "Two", 2)
	addToMap(userMap, "Three", 3)
	// Get the value for a key in the map.
	fmt.Println(getFromMap(userMap, "One"))
	// Get the key for a value in the map.
	fmt.Println(getKeyFromMap(userMap, 1))
	// Check if a key exists in the map.
	fmt.Println(keyExistsInMap(userMap, "One"))
	// Check if a value exists in the map.
	fmt.Println(valueExistsInMap(userMap, 1))
	// Get the first key in the map.
	fmt.Println(getFirstKeyInMap(userMap))
	// Get the first value in the map.
	fmt.Println(getFirstValueInMap(userMap))
	// Get the last key in the map.
	fmt.Println(getLastKeyInMap(userMap))
	// Get the last value in the map.
	fmt.Println(getLastValueInMap(userMap))
	// Removing a key/value pair from the map.
	removeFromMap(userMap, "One")
	// Get the size of the map.
	fmt.Println(getMapSize(userMap))
	// Get all the keys in the map.
	fmt.Println(getAllKeysInMap(userMap))
	// Get all the values in the map.
	fmt.Println(getAllValuesInMap(userMap))
	// Check if the map is empty.
	fmt.Println(isMapEmpty(userMap))
	// Remove all the key/value pairs from the map.
	removeAllFromMap(userMap)
	// Remove all the keys from the map.
	removeAllKeysFromMap(userMap)
	// Get the ammount of keys in the map.
	fmt.Println(getMapKeysSize(userMap))
	// Get the ammount of values in the map.
	fmt.Println(getMapValuesSize(userMap))
}

// Add a key/value pair to the map.
func addToMap(userMap map[string]int, key string, value int) {
	userMap[key] = value
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

// Check if a key exists in the map.
func keyExistsInMap(userMap map[string]int, key string) bool {
	_, keyExists := userMap[key]
	return keyExists
}

// Check if a value exists in the map.
func valueExistsInMap(userMap map[string]int, value int) bool {
	for _, valueInMap := range userMap {
		if valueInMap == value {
			return true
		}
	}
	return false
}

// Remove a key/value pair from the map.
func removeFromMap(userMap map[string]int, key string) {
	delete(userMap, key)
}

// Get the first key in the map.
func getFirstKeyInMap(userMap map[string]int) string {
	for keyInMap := range userMap {
		return keyInMap
	}
	return ""
}

// Get the first value in the map.
func getFirstValueInMap(userMap map[string]int) int {
	for _, valueInMap := range userMap {
		return valueInMap
	}
	return -1
}

// Get the last key in the map.
func getLastKeyInMap(userMap map[string]int) string {
	for keyInMap := range userMap {
		return keyInMap
	}
	return ""
}

// Get the last value in the map.
func getLastValueInMap(userMap map[string]int) int {
	for _, valueInMap := range userMap {
		return valueInMap
	}
	return -1
}

// Get the size of the map.
func getMapSize(userMap map[string]int) int {
	return len(userMap)
}

// Get all the keys in the map.
func getAllKeysInMap(userMap map[string]int) []string {
	var keys []string
	for keyInMap := range userMap {
		keys = append(keys, keyInMap)
	}
	return keys
}

// Get all the values in the map.
func getAllValuesInMap(userMap map[string]int) []int {
	var values []int
	for _, valueInMap := range userMap {
		values = append(values, valueInMap)
	}
	return values
}

// Check if the map is empty.
func isMapEmpty(userMap map[string]int) bool {
	return len(userMap) == 0
}

// Remove all the key/value pairs from the map.
func removeAllFromMap(userMap map[string]int) {
	for keyInMap := range userMap {
		delete(userMap, keyInMap)
	}
}

// Remove all the keys from the map.
func removeAllKeysFromMap(userMap map[string]int) {
	for keyInMap := range userMap {
		delete(userMap, keyInMap)
	}
}

// Get the ammount of keys in the map.
func getMapKeysSize(userMap map[string]int) int {
	counter := 0
	for keyInMap := range userMap {
		counter = counter + 1
		_ = keyInMap
	}
	return counter
}

// Get the ammount of values in the map.
func getMapValuesSize(userMap map[string]int) int {
	counter := 0
	for _, valueInMap := range userMap {
		counter = counter + 1
		_ = valueInMap
	}
	return counter
}
