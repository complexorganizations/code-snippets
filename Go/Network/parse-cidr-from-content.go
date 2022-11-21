package main

import (
	"fmt"
	"log"
	"net"
	"strings"
)

func main() {
	// Parse the cidr from a given string
	ip, cidr := parseCIDRFromContent("127.0.0.1/24")
	fmt.Println(ip, cidr)
}

// Parse the cidr from a given string
func parseCIDRFromContent(ipWithCIDR string) (net.IP, string) {
	ip, cidr, err := net.ParseCIDR(ipWithCIDR)
	if err != nil {
		log.Fatalln(err)
	}
	return ip, strings.Split(cidr.String(), "/")[1]
}
