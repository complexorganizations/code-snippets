package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	check, err := checkIfIPInRange("10.8.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(check)
}

func checkIfIPInRange(ip string) (bool, error) {
	cidrRange := []string{
		"10.0.0.0/8",
		"fd12:3456:789a:1::/64",
	}
	for _, cidr := range cidrRange {
		_, ipnet, err := net.ParseCIDR(cidr)
		if err != nil {
			return false, err
		}
		if ipnet.Contains(net.ParseIP(ip)) {
			return true, nil
		}
	}
	return false, nil
}
