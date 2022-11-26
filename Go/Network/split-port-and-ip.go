package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Split the ip address and port (ipv4)
	providedIP, providedPort := splitIPAndPort("1.1.1.1:8080")
	fmt.Println(providedIP, providedPort)
	// Split the ip address and port (ipv6)
	providedIP, providedPort = splitIPAndPort("[2606:4700:4700::1111]:8080")
	fmt.Println(providedIP, providedPort)
}

// Split a network ip address into its port and ip components.
func splitIPAndPort(content string) (string, string) {
	ip, port, err := net.SplitHostPort(content)
	if err != nil {
		log.Fatalln(err)
	}
	return ip, port
}
