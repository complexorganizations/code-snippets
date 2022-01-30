package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Check if a given url is absolute.
	fmt.Println(isURLAbsolute("https://www.example.com/"))
}

// Check if a given url is absolute.
func isURLAbsolute(givenURL string) bool {
	parsedURL, err := url.Parse(givenURL)
	if err != nil {
		log.Fatalln(err)
	}
	return parsedURL.IsAbs()
}
