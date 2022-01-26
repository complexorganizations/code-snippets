package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Get the user info from a url.
	fmt.Println(getUserInfoFromURL("https://user:pass@example.com:8080"))
}

// Get the user info from a given url.
func getUserInfoFromURL(givenURL string) *url.Userinfo {
	url, err := url.Parse(givenURL)
	if err != nil {
		log.Fatalln(err)
	}
	return url.User
}
