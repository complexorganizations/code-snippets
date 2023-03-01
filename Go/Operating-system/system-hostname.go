package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Print the hostname.
	fmt.Println(getSystemHostname())
}

// Get the current hostname of the system.
func getSystemHostname() string {
	hostname, err := os.Hostname()
	if err != nil {
		log.Fatalln(err)
	}
	return hostname
}
