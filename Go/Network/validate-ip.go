package main

import (
	"fmt"
	"net"
)

func main() {
	// Check if the IP address is valid.
	fmt.Println(isIPValid("1.1.1.1"))
	fmt.Println(isIPValid("500.500.500.500"))
	fmt.Println(isIPValid("2606:4700:4700::1111"))
	fmt.Println(isIPValid("####:@@@@:!!!!::****"))
}

// Check if the given IP address is valid.
func isIPValid(providedIP string) bool {
	return net.ParseIP(providedIP) != nil
}
