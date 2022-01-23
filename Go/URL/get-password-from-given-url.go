package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Get the password form a given url.
	fmt.Println(getPasswordFromGivenURL("https://user:pass@127.0.0.1:8080"))
}

// Get the password from a given url.
func getPasswordFromGivenURL(givenURL string) string {
	url, err := url.Parse(givenURL)
	if err != nil {
		log.Fatalln(err)
	}
	password, _ := url.User.Password()
	return password
}
