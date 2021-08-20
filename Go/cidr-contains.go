package main

import (
	"fmt"
	"net"
)

// Check if a certain ip in a cidr range.
func main() {
	fmt.Println(cidrRangeContains("10.0.0.0/24", "10.0.0.1"))  // true
	fmt.Println(cidrRangeContains("10.0.0.0/24", "127.0.0.1")) // false
}

func cidrRangeContains(cidrRange string, checkIP string) bool {
	_, ipnet, _ := net.ParseCIDR(cidrRange)
	secondIP := net.ParseIP(checkIP)
	return ipnet.Contains(secondIP)
}
