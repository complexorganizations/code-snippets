package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Get data from url.
	fmt.Println(string(getDataFromURL("https://www.google.com")))
}

// Send a http get request to a given url and return the data from that url.
func getDataFromURL(uri string) []byte {
	response, err := http.Get(uri)
	if err != nil {
		log.Fatalln(err)
	}
	body, err := io.ReadAll(response.Body)
	if err != nil {
		log.Fatalln(err)
	}
	for _, cookie := range response.Cookies() {
		if isCookieValid(cookie) {
			fmt.Println(cookie.Value)
		}
	}
	err = response.Body.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return body
}

// Check if the provided cookie is valid.
func isCookieValid(content *http.Cookie) bool {
	return content.Valid() == nil
}
