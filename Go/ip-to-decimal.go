package main

import (
	"fmt"
	"math/big"
	"net"
	"strings"
)

func main() {
	fmt.Println(ipToDecimal(net.ParseIP("1.1.1.1")))
	fmt.Println(ipToDecimal(net.ParseIP("2606:4700:4700::1111")))
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
