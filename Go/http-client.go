package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
)

func main() {
	// Send a request to the server and print the response.
	fmt.Println(string(getRequestedURL("http://www.example.com")))
	// Download a file from the given location.
	downloadFile("http://www.example.com/file.txt", "file.txt")
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

// Download a file from the given location.
func downloadFile(url string, localLocation string) error {
	response, err := http.Get(url)
	if err != nil {
		return err
	}
	urlData, err := os.Create(localLocation)
	if err != nil {
		return err
	}
	_, err = io.Copy(urlData, response.Body)
	defer response.Body.Close()
	defer urlData.Close()
	return err
}
