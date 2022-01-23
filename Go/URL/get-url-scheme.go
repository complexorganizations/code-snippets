package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Get the scheme of a url.
	fmt.Println(getURLScheme("https://127.0.0.1:8080"))
}

// Get the scheme of a given url.
func getURLScheme(givenURL string) string {
	url, err := url.Parse(givenURL)
	if err != nil {
		log.Fatalln(err)
	}
	return url.Scheme
}
