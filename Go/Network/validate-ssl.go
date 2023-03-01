package main

import (
	"crypto/tls"
	"fmt"
	"log"
	"net/url"
)

func main() {
	// Check if a url has a valid ssl.
	fmt.Println(validateSSLCert("https://www.google.com"))
}

// Validate a given url with its certificate
func validateSSLCert(uri string) bool {
	parsedURL, err := url.Parse(uri)
	if err != nil {
		log.Fatalln(err)
	}
	callTCP, err := tls.Dial("tcp", parsedURL.Hostname()+":443", nil)
	if err != nil {
		log.Fatalln(err)
	}
	err = callTCP.Close()
	if err != nil {
		log.Fatalln(err)
	}
	err = callTCP.VerifyHostname(parsedURL.Hostname())
	if err != nil {
		log.Fatalln(err)
	}
	return true
}
