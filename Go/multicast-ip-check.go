package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Println(isMulticast("224.0.0.1")) // true
	fmt.Println(isMulticast("10.0.0.0"))  // false
}

// check if an ip is multicast
func isMulticast(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsMulticast()
}
