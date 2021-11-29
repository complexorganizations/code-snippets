package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Set custom user agent to a HTTP request
	fmt.Println(setUserAgentOnRequest("http://httpbin.org/user-agent", "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"))
}

// Set custom user agent to a HTTP request
func setUserAgentOnRequest(uri string, userAgent string) []byte {
	client := &http.Client{}
	request, err := http.NewRequest("GET", uri, nil)
	if err != nil {
		log.Fatalln(err)
	}
	request.Header.Set("User-Agent", userAgent)
	response, err := client.Do(request)
	if err != nil {
		log.Fatalln(err)
	}
	body, err := io.ReadAll(response.Body)
	if err != nil {
		log.Fatalln(err)
	}
	err = response.Body.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return body
}
