package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
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
	b, err := json.Marshal(group)
	if err != nil {
		log.Println(err)
	}
	fmt.Println(string(b))
	// Decode JSON data
	var jsonContent = []byte(`{
		"Name": "John Doe",
		"Age": "25",
		"Address": "123 Main Street",
		"City": "New York",
		"State": "NY",
		"Zip": "10001",
		"Phone": "123-456-7890",
		"Email": "johnDoe@example.com"
	}`)
		type JsonStuff struct {
			Name    string `json:"Name"`
			Age     string `json:"Age"`
			Address string `json:"Address"`
			City    string `json:"City"`
			State   string `json:"State"`
			Zip     string `json:"Zip"`
			Phone   string `json:"Phone"`
			Email   string `json:"Email"`
		}
		var content []JsonStuff
		err = json.Unmarshal(jsonContent, &content)
		if err != nil {
			log.Println(err)
		}
		fmt.Println(content)
	// Check if a json file is valid.
	validCheck, err := validateJsonFromFile("test.json")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(validCheck)
}

func validateJsonFromFile(jsonFile string) (bool, error) {
	data, err := os.ReadFile(jsonFile)
	if err != nil {
		return false, err
	}
	return json.Valid(data), nil
}
