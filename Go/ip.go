package main

import (
	"fmt"
	"math/big"
	"net"
	"strings"
)

func main() {
	// Check if the ip is valid
	fmt.Println(checkIP("1.1.1.1"))
	fmt.Println(checkIP("266.266.266.266"))
	// Turn the ip into a decimal value.
	fmt.Println(ipToDecimal(net.ParseIP("1.1.1.1")))
	fmt.Println(ipToDecimal(net.ParseIP("2606:4700:4700::1111")))
	// Get the type of ip
	fmt.Println(checkIPType("1.1.1.1"))
	fmt.Println(checkIPType("2606:4700:4700::1111"))
	// Check if a ip is private.
	fmt.Println(privateIPCheck("10.8.0.1"))
	// Check if an ip is multicast
	fmt.Println(isMulticast("224.0.0.1"))
	// Check if an ip is unspecified
	fmt.Println(isUnspecified("0.0.0.0"))
	// Check if an ip is loopback
	fmt.Println(isLoopback("127.0.0.2"))
}

// Check if the ip is valid
func checkIP(ip string) bool {
	return net.ParseIP(ip) != nil
}

// Turn the ip into a decimal value.
func ipToDecimal(ip net.IP) *big.Int {
	ipToIntValue := big.NewInt(0)
	if strings.Contains(ip.String(), ".") {
		ipToIntValue.SetBytes(ip.To4())
	} else if strings.Contains(ip.String(), ":") {
		ipToIntValue.SetBytes(ip.To16())
	}
	return ipToIntValue
}

// Note, before using this function, make sure the data given is a valid ip.
func checkIPType(ip string) string {
	if strings.Contains(ip, ".") {
		return "IPv4"
	} else if strings.Contains(ip, ":") {
		return "IPv6"
	}
	return ""
}

// Check if a ip is private.
func privateIPCheck(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsPrivate()
}

// check if an ip is multicast
func isMulticast(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsMulticast()
}

// check if an ip is unspecefied
func isUnspecified(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsUnspecified()
}

// Check if an ip is loopback
func isLoopback(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsLoopback()
}