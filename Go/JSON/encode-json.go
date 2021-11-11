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
	currentJson, err := json.Marshal(group)
	if err != nil {
		log.Fatalln(err)
	}
	fmt.Println(currentJson)
}
