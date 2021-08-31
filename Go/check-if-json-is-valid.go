package main

import (
	"encoding/json"
	"fmt"
	"log"
	"os"
)

func main() {
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
