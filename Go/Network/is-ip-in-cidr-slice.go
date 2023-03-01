package main

import (
	"fmt"
	"log"
	"net"
	"strings"
)

func main() {
	// Create a slice of CIDRs.
	cidrs := []*net.IPNet{
		&net.IPNet{IP: net.IPv4(192, 168, 0, 0), Mask: net.CIDRMask(16, 32)},
		&net.IPNet{IP: net.IPv4(192, 168, 1, 0), Mask: net.CIDRMask(24, 32)},
		&net.IPNet{IP: net.IPv4(192, 168, 2, 0), Mask: net.CIDRMask(24, 32)},
		&net.IPNet{IP: net.IPv4(192, 168, 3, 0), Mask: net.CIDRMask(24, 32)},
		&net.IPNet{IP: net.IPv4(192, 168, 4, 0), Mask: net.CIDRMask(24, 32)},
	}
	// Check if the IP address is in the CIDR slice.
	fmt.Println(isIPInCIDRSlice(net.ParseIP("192.168.0.1"), cidrs))
	// Check if the IP address is in a normal slice of CIDR.
	cidrRange := []string{
		"10.0.0.0/8",
		"fd00:00:00::0/8",
	}
	fmt.Println(ipInsideCIDRCheck(net.ParseIP("1.1.1.1"), cidrRange))
}

// Check if the given IP address is in the given CIDR slice.
func isIPInCIDRSlice(ip net.IP, cidrs []*net.IPNet) bool {
	for _, cidr := range cidrs {
		if cidr.Contains(ip) {
			return true
		}
	}
	return false
}

// Check if a specific IP address is in a range of cidr.
func ipInsideCIDRCheck(ip net.IP, sliceOfCIDR []string) bool {
	for _, cidr := range sliceOfCIDR {
		if strings.Contains(cidr, "/") {
			_, ipnet, err := net.ParseCIDR(cidr)
			if err != nil {
				log.Fatalln(err)
			}
			if ipnet.Contains(ip) {
				return true
			}
		}
	}
	return false
}
