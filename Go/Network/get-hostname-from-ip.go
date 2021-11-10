package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Get the list of hostname from a given IP address
	fmt.Println(getHostnameFromIP("1.1.1.1"))
}

// Get the list of hostname from a given IP address
func getHostnameFromIP(ip string) []string {
	hostname, err := net.LookupAddr(ip)
	if err != nil {
		log.Fatalln(err)
	}
	return hostname
}
