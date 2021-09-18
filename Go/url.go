package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Validate the URI
	if validURL("https://www.example.com") {
		fmt.Println("works")
	}
	// Get the hostname from the URI
	fmt.Println(getHostnameFromURI("https://www.example.com"))
	// 
}

// Validate the URI
func validURL(uri string) bool {
	_, err := url.ParseRequestURI(uri)
	return err == nil
}

// Get the hostname from the URI
func getHostnameFromURI(uri string) string {
	inputUrl, err := url.Parse(uri)
	if err != nil {
		log.Fatal(err)
	}
	return inputUrl.Hostname()
}
