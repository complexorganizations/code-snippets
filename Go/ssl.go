package main

import (
	"crypto/tls"
	"fmt"
	"log"
	"net/url"
)

func main() {
	valid, err := validateSSLCert("https://www.google.com")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(valid)
}

// Validate all the SSL Certs
func validateSSLCert(hostname string) (bool, error) {
	parsedURL, err := url.Parse(hostname)
	if err != nil {
		log.Fatal(err)
	}
	parsedHostname := fmt.Sprint(parsedURL.Hostname())
	callTCP, err := tls.Dial("tcp", parsedHostname+":443", nil)
	if err != nil {
		return false, err
	}
	callTCP.Close()
	err = callTCP.VerifyHostname(parsedHostname)
	if err != nil {
		return false, err
	}
	return true, nil
}
