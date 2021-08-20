package main

import (
	"fmt"
	"log"
	"net"
)

var privateIPBlocks []*net.IPNet

func init() {
	cidrRange := []string{
		"10.0.0.0/8",
		"fd12:3456:789a:1::/64",
	}
	for _, cidr := range cidrRange {
		_, ipnet, err := net.ParseCIDR(cidr)
		if err != nil {
			log.Fatal(err)
		}
		privateIPBlocks = append(privateIPBlocks, ipnet)
	}
}

func main() {
	fmt.Println(isPrivateIP(net.ParseIP("192.168.1.1")))
}

func isPrivateIP(ip net.IP) bool {
	for _, block := range privateIPBlocks {
		if block.Contains(ip) {
			return true
		}
	}
	return false
}
