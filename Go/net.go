package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	returnIP, portNumber, err := net.SplitHostPort("1.1.1.1:8080")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(returnIP)
	fmt.Println(portNumber)
}
