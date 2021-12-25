package main

import (
	"encoding/json"
	"fmt"
	"log"
)

func main() {
	// unmarshal json into a struct and return the struct.
	type person struct {
		Name string
		Age  int
		City string
	}
	var data person
	fmt.Println(unmarshalJSONIntoStruct([]byte(`{"name":"John","age":30,"city":"New York"}`), &data))
}

// Unmarshal json into a struct and return the struct.
func unmarshalJSONIntoStruct(content []byte, data interface{}) interface{} {
	err := json.Unmarshal(content, &data)
	if err != nil {
		log.Fatal(err)
	}
	return data
}
