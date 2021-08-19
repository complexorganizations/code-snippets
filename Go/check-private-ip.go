package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Println(privateIPCheck("1.1.1.1"))  // False since this is not a private IP
	fmt.Println(privateIPCheck("10.8.0.1")) // True: Since this is a private ip.
}

// Check if a ip is private.
func privateIPCheck(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsPrivate()
}
