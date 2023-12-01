package main

import "fmt"

func main() {
	// Check if a given slice cointains duplicates.
	var randomSlice = []string{"a", "a", "b", "c"}
	// Check if the given slice cointains duplicates.
	fmt.Println(checkDuplicatesInSlice(randomSlice))
}

// Check if a given slice cointains duplicates.
func checkDuplicatesInSlice(givenSlice []string) bool {
	check := make(map[string]bool)
	for _, content := range givenSlice {
		// Check if the value is true already; if it is than its multiple values.
		if check[content] {
			return true
		}
		// If no value is assigned than lets mark it as true.
		if !check[content] {
			check[content] = true
		}
	}
	return false
}
