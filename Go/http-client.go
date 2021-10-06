package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Send a request to the server and print the response.
	fmt.Println(string(getRequestedURL("http://www.example.com")))
}

// Send a request to the server and return the response.
func getRequestedURL(url string) []byte {
	response, err := http.Get(url)
	if err != nil {
		log.Println(err)
	}
	body, err := io.ReadAll(response.Body)
	if err != nil {
		log.Println(err)
	}
	response.Body.Close()
	return body
}