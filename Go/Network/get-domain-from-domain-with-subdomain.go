package main

import (
	"fmt"
	"log"

	"golang.org/x/net/publicsuffix"
)

func main() {
	// Get the domain from a given domain with subdomain
	fmt.Println(getDomainFromDomainWithSubdomain("www.one.two.three.example.com"))
}

// Get the domain from a given domain with subdomain
func getDomainFromDomainWithSubdomain(content string) string {
	domain, err := publicsuffix.EffectiveTLDPlusOne(content)
	if err != nil {
		log.Fatalln(err)
	}
	return domain
}
