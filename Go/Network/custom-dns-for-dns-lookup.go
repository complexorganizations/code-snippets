package main

import (
	"context"
	"fmt"
	"log"
	"net"
)

func main() {
	// Use a custom DNS resolver to do a DNS lookup.
	fmt.Println(customDNSForDnsLookup("google.com", "8.8.8.8:53"))
}

// Use a custom DNS resolver to do a DNS lookup.
func customDNSForDnsLookup(givenDomain string, givenDNS string) []string {
	customResolver := &net.Resolver{
		PreferGo: true,
		Dial: func(ctx context.Context, network string, address string) (net.Conn, error) {
			netDialer := net.Dialer{}
			return netDialer.DialContext(ctx, network, givenDNS)
		},
	}
	domainLookup, err := customResolver.LookupHost(context.Background(), givenDomain)
	if err != nil {
		log.Fatalln(err)
	}
	return domainLookup
}
