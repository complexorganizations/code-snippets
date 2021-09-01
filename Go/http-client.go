package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Send the request
	response, err := http.Get("http://www.google.com")
	// Log any errors.
	if err != nil {
		log.Println(err)
	}
	// Status code for the respose.
	fmt.Println("Response status:", response.Status)
	// the body of the resonse
	body, err := io.ReadAll(response.Body)
	if err != nil {
		log.Println(err)
	}
	// the body content
	fmt.Println(body)
	// close the body.
	response.Body.Close()
}
