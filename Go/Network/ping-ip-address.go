package main

import (
	"fmt"
	"net"
)

func main() {
	// Ping an IP address and return if it was successful or not.
	fmt.Println(pingAnIpAddress("tcp", "1.1.1.1", "80"))
}

// Ping an IP address and return if it was successful or not.
func pingAnIpAddress(methord string, ip string, port string) bool {
	_, err := net.Dial(methord, ip+":"+port)
	return err == nil
}
