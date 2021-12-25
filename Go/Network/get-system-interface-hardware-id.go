package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Get the mac address of the current machine
	for deviceName, hardwareID := range getSystemMacAddress() {
		fmt.Println(deviceName, hardwareID)
	}
}

// Get a list of all the mac addresses of the current machine
func getSystemMacAddress() map[string]interface{} {
	interfaces, err := net.Interfaces()
	if err != nil {
		log.Fatalln(err)
	}
	macAddress := make(map[string]interface{})
	for _, inter := range interfaces {
		macAddress[inter.Name] = inter.HardwareAddr
	}
	return macAddress
}
