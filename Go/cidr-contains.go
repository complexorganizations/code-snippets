package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// True
	firstCheck, err := cidrRangeContains("10.0.0.0/24", "10.0.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(firstCheck)
	// False
	secondCheck, err := cidrRangeContains("10.0.0.0/24", "127.0.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(secondCheck)

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
