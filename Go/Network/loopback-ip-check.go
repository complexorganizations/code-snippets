package main

import (
	"fmt"
	"net"
)

func main() {
	// Check if the ip address is a loopback address
	fmt.Println(isIPLoopback(net.ParseIP("1.1.1.1")))
}

// Check if the ip address is a loopback address
func isIPLoopback(ip net.IP) bool {
	return ip.IsLoopback()
}
