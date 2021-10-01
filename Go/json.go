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
	currentJson, err := json.Marshal(group)
	if err != nil {
		log.Println(err)
	}
	fmt.Println(string(currentJson))
	// Write data to a file
	err = writeContnetToFile("test.json", string(currentJson))
	if err != nil {
		log.Println(err)
	}
	// Check if a json file is valid.
	validCheck, err := validateJsonFromFile("test.json")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(validCheck)
}

// Open a file and check if a json is valid.
func validateJsonFromFile(jsonFile string) (bool, error) {
	data, err := os.ReadFile(jsonFile)
	if err != nil {
		return false, err
	}
	return json.Valid(data), nil
}

// Check if a json is valid.
func validateJson(jsonData []byte) bool {
	return json.Valid(jsonData)
}

// Don't append and write to file
func writeContnetToFile(filepath string, content string) error {
	err := os.WriteFile(content, []byte(filepath), 0644)
	if err != nil {
		return err
	}
	return nil
}
