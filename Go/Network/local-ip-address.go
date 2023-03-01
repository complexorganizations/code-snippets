package main

import (
	"fmt"
	"log"
	"net"
	"os"
)

func main() {
	// Get the local ip address
	fmt.Println(getLocalIPAddress())
}

// Get the current local ip address of the machine
func getLocalIPAddress() []net.IP {
	hostname, err := os.Hostname()
	if err != nil {
		log.Fatalln(err)
	}
	localIP, err := net.LookupIP(hostname)
	if err != nil {
		log.Fatalln(err)
	}
	return localIP
}
