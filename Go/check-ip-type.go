package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Println(checkIPType("1.1.1.1"))
	fmt.Println(checkIPType("2606:4700:4700::1111"))
}

// Note, before using this function, make sure the data given is a valid ip.
func checkIPType(ip string) string {
	if strings.Contains(ip, ".") {
		return "IPv4"
	} else if strings.Contains(ip, ":") {
		return "IPv6"
	} else {
		return ""
	}
}
