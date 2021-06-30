package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	if checkIPandPort("tcp", "0.0.0.0", "443") {
		fmt.Println("Its a valid host and port")
	} else {
		log.Println("Error, there was an error")
	}
}

func checkIPandPort(methord string, ip string, port string) bool {
	pingThis := fmt.Sprint(ip + ":" + port)
	_, err := net.Dial(methord, pingThis)
	return err == nil
}
