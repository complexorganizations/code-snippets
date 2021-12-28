package main

import (
	"fmt"
	"io"
	"net/http"
	"net/url"
)

func main() {
	// Send a http request with a given proxy and return the bytes of the response.
	fmt.Printf("%s", httpRequestWithProxy("http://127.0.0.1:8080", "https://www.example.com", "GET"))
}

// Send a http request with a given proxy and return the bytes of the response.
func httpRequestWithProxy(proxy string, uri string, methord string) []byte {
	proxyURL, err := url.Parse(proxy)
	if err != nil {
		return []byte("")
	}
	transport := &http.Transport{
		Proxy: http.ProxyURL(proxyURL),
	}
	client := &http.Client{
		Transport: transport,
	}
	request, err := http.NewRequest(methord, uri, nil)
	if err != nil {
		return []byte("")
	}
	response, err := client.Do(request)
	if err != nil {
		return []byte("")
	}
	body, err := io.ReadAll(response.Body)
	if err != nil {
		return []byte("")
	}
	err = response.Body.Close()
	if err != nil {
		return []byte("")
	}
	return body
}
