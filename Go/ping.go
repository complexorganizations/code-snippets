package main

import (
	"fmt"
	"net"
)

func main() {
	if checkIPandPort("tcp", "0.0.0.0", "443") {
		fmt.Println("Send the request successfully.")
	}
}

func checkIPandPort(methord string, ip string, port string) bool {
	pingThis := fmt.Sprint(ip + ":" + port)
	_, err := net.Dial(methord, pingThis)
	return err == nil
}
