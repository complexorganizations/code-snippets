package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Println(isLoopback("127.0.0.2")) // true
	fmt.Println(isLoopback("10.0.0.0"))  // false
}

// check if an ip is loopback
func isLoopback(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsLoopback()
}
