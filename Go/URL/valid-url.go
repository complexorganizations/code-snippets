package main

import (
	"fmt"
	"net/url"
)

func main() {
	// Check if the given url is valid.
	fmt.Println(isUrlValid("https://www.google.com"))
}

// Check if the given url is valid.
func isUrlValid(uri string) bool {
	_, err := url.ParseRequestURI(uri)
	return err == nil
}