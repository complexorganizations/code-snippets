package main

import (
	"fmt"
	"net"
	"strings"
)

func main() {
	// Check if a given IP address already has a CIDR block and add it if not.
	fmt.Println(addCIDRToIP(net.ParseIP("1.1.1.1")))
	fmt.Println(addCIDRToIP(net.ParseIP("1.0.0.0/8")))
	fmt.Println(addCIDRToIP(net.ParseIP("2606:4700:4700::1111")))
	fmt.Println(addCIDRToIP(net.ParseIP("2606:4700:4700::1111/8")))
}

// Check if a given IP address already has a CIDR block and add it if not.
func addCIDRToIP(ipAddress net.IP) string {
	if strings.Contains(ipAddress.String(), ".") {
		return ipAddress.String() + "/32"
	} else if strings.Contains(ipAddress.String(), ":") {
		return ipAddress.String() + "/128"
	}
	return ipAddress.String()
}
