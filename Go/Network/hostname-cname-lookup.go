package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Cname lookup on a provided hostname and return the results.
	fmt.Println(cnameLookup("api.ipengine.dev"))
}

// Cname lookup on a provided hostname and return the results.
func cnameLookup(hostname string) string {
	content, err := net.LookupCNAME(hostname)
	if err != nil {
		log.Fatalln(err)
	}
	return content
}
