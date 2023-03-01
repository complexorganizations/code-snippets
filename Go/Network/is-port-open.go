package main

import (
	"fmt"
	"net"
	"time"
)

func main() {
	// Check if port 80 is open on example.com
	if isPortOpen("example.com", 80, "tcp") {
		fmt.Println("Port 80 is open on example.com")
	} else {
		fmt.Println("Port 80 is not open on example.com")
	}
}

// Check if a given port is open a given host
func isPortOpen(host string, port int, protocol string) bool {
	conn, err := net.DialTimeout(protocol, fmt.Sprintf("%s:%d", host, port), time.Minute)
	if err != nil {
		return false
	}
	err = conn.Close()
	if err != nil {
		return false
	}
	return true
}
