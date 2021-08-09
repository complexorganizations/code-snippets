package main

import (
	"fmt"
	"net"
)

func main() {
	if validNameServer("google.com") {
		fmt.Println("works")
	}
}

// Validate a website's domain
func validNameServer(domain string) bool {
	_, err := net.LookupNS(domain)
	return err == nil
}
