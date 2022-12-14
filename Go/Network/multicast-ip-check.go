package main

import (
	"fmt"
	"net"
)

func main() {
	// Check if the given ip address is a multicast address.
	fmt.Println(isIPMulticast(net.ParseIP("1.1.1.1")))
}

// Check if a given ip address is mutlicast.
func isIPMulticast(ip net.IP) bool {
	return ip.IsMulticast()
}
