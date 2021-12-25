package main

import (
	"encoding/json"
	"fmt"
	"log"
)

func main() {
	// unmarshal json into a map and return the map.
	fmt.Println(unmarshalJSONIntoMap([]byte(`{"name":"John","age":30,"city":"New York"}`)))
}

// Unmarshal json into a map and return the map.
func unmarshalJSONIntoMap(content []byte) map[string]interface{} {
	var data map[string]interface{}
	err := json.Unmarshal(content, &data)
	if err != nil {
		log.Fatal(err)
	}
	return data
}
