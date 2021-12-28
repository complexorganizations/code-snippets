package main

import (
	"fmt"
	"log"
	"net/http"
	"net/url"
)

func main() {
	// Check if a given proxy is working.
	fmt.Println(validateProxy("http://127.0.0.1:8080"))
}

// Check if a given proxy is working and return a bool.
func validateProxy(proxy string) bool {
	proxyURL, err := url.Parse(proxy)
	if err != nil {
		log.Fatalln(err)
	}
	transport := &http.Transport{
		Proxy: http.ProxyURL(proxyURL),
	}
	client := &http.Client{
		Transport: transport,
	}
	request, err := http.NewRequest("GET", "https://www.example.com", nil)
	if err != nil {
		log.Fatalln(err)
	}
	response, err := client.Do(request)
	if err != nil {
		log.Fatalln(err)
	}
	return response.StatusCode == 200
}
