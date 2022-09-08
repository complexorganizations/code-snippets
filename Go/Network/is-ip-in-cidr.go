package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Check if the IP address is in the CIDR block.
	fmt.Println(isIPInCIDR(net.ParseIP("1.1.1.1"), "1.0.0.0/8"))
	fmt.Println(isIPInCIDR(net.ParseIP("1.1.1.1"), "0.0.0.0/8"))
}

// Check if an IP address is within a given CIDR block.
func isIPInCIDR(ip net.IP, cidr string) bool {
	_, block, err := net.ParseCIDR(cidr)
	if err != nil {
		log.Fatalln(err)
	}
	return block.Contains(ip)
}
