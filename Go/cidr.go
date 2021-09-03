package main

import (
	"fmt"
	"log"
	"net"
	"strings"
)

func main() {
	// Add a cidr if no cidr is found
	fmt.Println(addCidr(net.ParseIP("1.1.1.1")))
	fmt.Println(addCidr(net.ParseIP("8.8.8.8/32"))) // Already contains a cidr
	// Check if a certain ip in a cidr range.
	firstCheck, err := cidrRangeContains("10.0.0.0/24", "10.0.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(firstCheck)
	// Check if a specific IP address is in a range of cidr.
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

// Add a cidr if no cidr is found
func addCidr(ipToAddCidr net.IP) string {
	if strings.Contains(ipToAddCidr.String(), ".") {
		return ipToAddCidr.String() + "/32"
	} else if strings.Contains(ipToAddCidr.String(), ":") {
		return ipToAddCidr.String() + "/128"
	}
	return ipToAddCidr.String()
}

// Check if a certain ip in a cidr range.
func cidrRangeContains(cidrRange string, checkIP string) (bool, error) {
	_, ipnet, err := net.ParseCIDR(cidrRange)
	if err != nil {
		return false, err
	}
	secondIP := net.ParseIP(checkIP)
	return ipnet.Contains(secondIP), err
}

// Check if a specific IP address is in a range of cidr.
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
