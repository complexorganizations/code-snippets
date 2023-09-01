package main

import (
	"fmt"
)

func main() {
	// Create a map with key type string and value type string.
	randomUserGeneratedMap := map[string]string{
		"name":    "John",
		"surname": "Doe",
	}
	// Loop though the map.
	for key, value := range randomUserGeneratedMap {
		fmt.Println(key, value)
	}
}
