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
	validUri, err := url.ParseRequestURI(uri)
	if err != nil {
		return false
	}
	_ = validUri
	return true
}
