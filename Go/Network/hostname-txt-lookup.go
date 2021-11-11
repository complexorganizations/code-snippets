package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Lookup txt records for a hostname.
	fmt.Println(hostnameTXTLookup("ipengine.dev"))
}

// Lookup txt records for a hostname and return them.
func hostnameTXTLookup(hostname string) []string {
	content, err := net.LookupTXT(hostname)
	if err != nil {
		log.Fatalln(err)
	}
	return content
}
