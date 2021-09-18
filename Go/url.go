package main

import (
	"fmt"
"log" 
	"net/url"
)

func main() {
	if validURL("https://www.example.com") {
		fmt.Println("works")
	}
u, err := url.Parse("https://example.org:8000/path")
	if err != nil {
		log.Fatal(err)
	}
}

// Validate the URI
func validURL(uri string) bool {
	_, err := url.ParseRequestURI(uri)
	return err == nil
}
