package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Get the path of a given url.
	fmt.Println(getPathFromGivenURL("https://27.0.0.1:8080/example"))
}

// Get the path of a given url
func getPathFromGivenURL(givenURL string) string {
	url, err := url.Parse(givenURL)
	if err != nil {
		log.Fatalln(err)
	}
	return url.Path
}
