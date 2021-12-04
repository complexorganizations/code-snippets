package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Get the mx records for a hostname
	fmt.Printf("%f", getMXDataFromHostname("google.com"))
}

// Get the mx records for a hostname
func getMXDataFromHostname(hostname string) []*net.MX {
	mxData, err := net.LookupMX(hostname)
	if err != nil {
		log.Fatalln(err)
	}
	return mxData
}
