package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Get the username form a given url.
	fmt.Println(getUsernameFromGivenURL("https://user:pass@example.com:8080"))
}

// Get the username from a given url.
func getUsernameFromGivenURL(givenURL string) string {
	url, err := url.Parse(givenURL)
	if err != nil {
		log.Fatalln(err)
	}
	return url.User.Username()
}
