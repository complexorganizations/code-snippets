package main

import (
	"net"
	"fmt"
	"strings"
)

func main() {
	// Check what type of IP address is.
	fmt.Println(checkIPType(net.ParseIP("1.1.1.1")))
	fmt.Println(checkIPType(net.ParseIP("2606:4700:4700::1111")))
}

// Check whether the given IP address is either IPv4 or IPv6.
func checkIPType(userIP net.IP) string {
	if strings.Contains(string(userIP), ".") {
		return "IPv4"
	} else if strings.Contains(string(userIP), ":") {
		return "IPv6"
	}
	return "Unknown"
}