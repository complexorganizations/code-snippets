package main

import (
	"fmt"
	"net"
	"strings"
)

func main() {
	fmt.Println(addCidr(net.ParseIP("1.1.1.1")))
	fmt.Println(addCidr(net.ParseIP("2606:4700:4700::1111")))
}

// Add a cidr if no cidr is found
func addCidr(ipToAddCidr net.IP) string {
	if strings.Contains(ipToAddCidr.String(), ".") {
		return ipToAddCidr.String() + "/32"
	} else if strings.Contains(ipToAddCidr.String(), ":") {
		return ipToAddCidr.String() + "/128"
	}
	return ipToAddCidr.String()
}
