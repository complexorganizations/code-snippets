package main

import (
	"encoding/json"
	"fmt"
)

func main() {
	// Sample json data.
	randomProvidedJson := []byte(`{"name":"John","age":30,"city":"New York"}`)
	// Check if the json is valid.
	fmt.Println(jsonValid(randomProvidedJson))
}

// Check if the json is valid.
func jsonValid(content []byte) bool {
	return json.Valid(content)
}
