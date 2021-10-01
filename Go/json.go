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
	err = writeToFile("foo.json", string(currentJson))
	if err != nil {
		log.Println(err)
	}
	// Check if a json file is valid.
	validCheck, err := validateJsonFromFile("foo.json")
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

// Append and write to file
func writeToFile(pathInSystem string, content string) error {
	filePath, err := os.OpenFile(pathInSystem, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		return err
	}
	_, err = filePath.WriteString(content + "\n")
	if err != nil {
		return err
	}
	err = filePath.Close()
	if err != nil {
		return err
	}
	return nil
}
