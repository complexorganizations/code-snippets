package main

import (
	"fmt"
	"net"
)

func main() {
	// Verify that a mac address is valid.
	fmt.Println(validateMacAddress("70:96:67:08:D6:11"))
}

// Verify that a mac address is valid.
func validateMacAddress(mac string) bool {
	_, err := net.ParseMAC(mac)
	if err != nil {
		return false
	}
	return true
}
