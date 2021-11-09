package main

import (
	"io"
	"log"
	"net/http"
	"os"
)

func main() {
	// Download a file from a given url and save it to local location.
	downloadFileFromURL("https://api.ipengine.dev/", "ip.json")
}

// Download a file from the given URL.
func downloadFileFromURL(url string, localPath string) {
	response, err := http.Get(url)
	if err != nil {
		log.Fatalln(err)
	}
	urlData, err := os.Create(localPath)
	if err != nil {
		log.Fatalln(err)
	}
	_, err = io.Copy(urlData, response.Body)
	if err != nil {
		log.Fatalln(err)
	}
	err = urlData.Close()
	if err != nil {
		log.Fatalln(err)
	}
	err = response.Body.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
