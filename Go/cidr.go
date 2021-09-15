package main

import (
	"encoding/binary"
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
		"fd00:00:00::0/8",
	}
	check, err := isIPinCIDR(cidrRange, "127.0.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(check)
	// Get a list of all IP addresses in a given subnet.
	ips, err := cidrToIP("10.0.0.0/24")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(ips)
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
	return ipnet.Contains(secondIP), nil
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

// Get a list of all IP addresses in a given subnet.
func cidrToIP(cidr string) ([]string, error) {
	_, ipv4Net, err := net.ParseCIDR(cidr)
	if err != nil {
		return nil, err
	}
	mask := binary.BigEndian.Uint32(ipv4Net.Mask)
	start := binary.BigEndian.Uint32(ipv4Net.IP)
	finish := (start & mask) | (mask ^ 0xffffffff)
	var ips []string
	for i := start; i <= finish; i++ {
		ip := make(net.IP, 4)
		binary.BigEndian.PutUint32(ip, i)
		ips = append(ips, ip.String())
	}
	return ips, nil
}
