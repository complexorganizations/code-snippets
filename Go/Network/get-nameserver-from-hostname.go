package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Get the hostname from the nameserver
	fmt.Printf("%f", getNameServerFromHostName("ipengine.dev"))
}

// Get the nameserver from the hostname
func getNameServerFromHostName(hostname string) []*net.NS {
	nameserver, err := net.LookupNS(hostname)
	if err != nil {
		log.Fatalln(err)
	}
	return nameserver
}
