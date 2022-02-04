package main

import (
	"fmt"
	"net"
)

func main() {
	// Ensure that the CIDR block is valid.
	fmt.Println(validateCIDR("10.0.0.0/24"))
}

// Ensure that the CIDR block is valid.
func validateCIDR(ipWithCidr string) bool {
	_, _, err := net.ParseCIDR(ipWithCidr)
	return err == nil
}
