package main

import (
	"fmt"
	"net/url"
)

func main() {
	if validURL("https://www.example.com") {
		fmt.Println("works")
	}
}

// Validate the URI
func validURL(uri string) bool {
	_, err := url.ParseRequestURI(uri)
	return err == nil
}
