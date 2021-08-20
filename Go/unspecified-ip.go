package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Println(isUnspecified("1.1.1.1")) // false
	fmt.Println(isUnspecified("0.0.0.0")) // true
}

// check if an ip is unspecefied
func isUnspecified(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsUnspecified()
}
