package main

import (
	"fmt"
	"net"
)

func main() {
	fmt.Println(checkIP("1.1.1.1"))
	fmt.Println(checkIP("266.266.266.266"))
}

// Check if the ip is valid
func checkIP(ip string) bool {
	return net.ParseIP(ip) != nil
}
