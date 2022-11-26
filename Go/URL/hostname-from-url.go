package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Get the hostname from the given url.
	fmt.Println(getHostNameFromURL("http://www.google.com"))
}

// Get the hostname from the given url.
func getHostNameFromURL(uri string) string {
	content, err := url.Parse(uri)
	if err != nil {
		log.Fatalln(err)
	}
	return content.Hostname()
}
