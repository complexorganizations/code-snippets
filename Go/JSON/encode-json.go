package main

import (
	"encoding/json"
	"fmt"
	"log"
)

func main() {
	// Encode data from a map to JSON
	type ColorGroup struct {
		ID     int
		Name   string
		Colors []string
	}
	group := ColorGroup{
		ID:     1,
		Name:   "Reds",
		Colors: []string{"Crimson", "Red", "Ruby", "Maroon"},
	}
	// Encode the struct into JSON.
	fmt.Printf("%s", encodeStructToJSON(group))
}

// Encode struct data to JSON.
func encodeStructToJSON(content interface{}) []byte {
	contentJSON, err := json.Marshal(content)
	if err != nil {
		log.Fatalln(err)
	}
	return contentJSON
}
