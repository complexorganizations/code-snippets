package main

import (
	"fmt"
	"net"
)

func main() {
	// Check if the IP address is private.
	fmt.Println(isIPPrivate(net.ParseIP("1.1.1.1")))
}

// Check weather the IP address is private.
func isIPPrivate(ip net.IP) bool {
	return ip.IsPrivate()
}
