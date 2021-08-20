package main

import (
	"encoding/json"
	"fmt"
	"log"
)

func main() {
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
	err := json.Unmarshal(jsonContent, &content)
	if err != nil {
		log.Println(err)
	}
	fmt.Println(content)
}
