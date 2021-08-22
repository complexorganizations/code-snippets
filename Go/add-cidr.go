package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Println(addCidr("1.1.1.1"))
	fmt.Println(addCidr("2606:4700:4700::1111"))
}

// Add a cidr if no cidr is found
func addCidr(ipToAddCidr string) string {
	if strings.Contains(ipToAddCidr, "/") {
		return ipToAddCidr
	} else if strings.Contains(ipToAddCidr, ".") {
		return ipToAddCidr + "/32"
	} else if strings.Contains(ipToAddCidr, ":") {
		return ipToAddCidr + "/128"
	}
	return ipToAddCidr
}
