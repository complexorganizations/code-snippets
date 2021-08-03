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
	ns, err := net.LookupNS(domain)
	if err != nil {
		return false
	}
	_ = ns
	return true
}
