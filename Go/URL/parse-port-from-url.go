package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Parse the URL and return the port.
	fmt.Println(parsePortFromURL("https://127.0.0.1:8080"))
}

// Parse the URL and return the port.
func parsePortFromURL(uri string) string {
	content, err := url.Parse(uri)
	if err != nil {
		log.Fatalln(err)
	}
	return content.Port()
}
