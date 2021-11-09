package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Get data from url.
	fmt.Println(string(getDataFromURL("https://api.ipengine.dev/")))
}

// Send a http get request to a given url and return the data from that url.
func getDataFromURL(uri string) []byte {
	response, err := http.Get(uri)
	if err != nil {
		log.Println(err)
	}
	body, err := io.ReadAll(response.Body)
	if err != nil {
		log.Println(err)
	}
	err = response.Body.Close()
	if err != nil {
		log.Println(err)
	}
	return body
}
