package main

import (
	"fmt"
	"log"
	"net"
	"strings"
)

func main() {
	cidrRange := []string{
		"10.0.0.0/8",
		"fd12:3456:789a:1::/64",
	}
	check, err := isIPinCIDR(cidrRange, "127.0.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(check)
}

// Check if a specific IP address is in a cidr.
func isIPinCIDR(cidrSlice []string, networkIdentity string) (bool, error) {
	for _, cidr := range cidrSlice {
		if strings.Contains(cidr, "/") {
			_, ipnet, err := net.ParseCIDR(cidr)
			if err != nil {
				return false, err
			}
			if ipnet.Contains(net.ParseIP(networkIdentity)) {
				return true, nil
			}
		}
	}
	return false, nil
}
