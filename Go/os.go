package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Get the local system temp dir
	fmt.Println(os.TempDir())
	// Get the local system hostname
	hostname, err := getSystemHostname()
	if err != nil {
		log.Println(err)
	}
	fmt.Println(hostname)
}

func getSystemHostname() (string, error) {
	systemHostname, err := os.Hostname()
	if err != nil {
		return "", err
	}
	return systemHostname, nil
}
