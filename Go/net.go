package main

import (
	"fmt"
	"log"
	"net"
)

func main() {
	// Split a ip address and port number
	returnIP, portNumber, err := splitIPPort("1.1.1.1:8080")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(returnIP)
	fmt.Println(portNumber)
	// Validate a website's name server
	isNameServerValid := validateDomainViaLookupNS("google.com")
	fmt.Println(isNameServerValid)
	// Validate a website's ip address
	isIPValid := validateDomainViaLookupAddr("google.com")
	fmt.Println(isIPValid)
	// Validate a domain name via lookupCNAME
	isCNAMEValid := validateDomainViaLookupCNAME("google.com")
	fmt.Println(isCNAMEValid)
	// Validate a domain name via lookupMX
	isMXValid := validateDomainViaLookupMX("google.com")
	fmt.Println(isMXValid)
	// Validate a domain name via lookupTXT
	isTXTValid := validateDomainViaLookupTXT("google.com")
	fmt.Println(isTXTValid)
}

// Split a ip address and port number
func splitIPPort(ipPort string) (string, string, error) {
	ip, port, err := net.SplitHostPort(ipPort)
	if err != nil {
		return "", "", err
	return ip, port, nil
}

// Validate a domain name via lookupNS
func validateDomainViaLookupNS(domain string) bool {
	valid, _ := net.LookupNS(domain)
	return len(valid) >= 1
}

// Validate a domain name via lookupHost
func validateDomainViaLookupAddr(domain string) bool {
	valid, _ := net.LookupAddr(domain)
	return len(valid) >= 1
}

// Validate a domain name via lookupCNAME
func validateDomainViaLookupCNAME(domain string) bool {
	valid, _ := net.LookupCNAME(domain)
	return len(valid) >= 1
}

// Validate a domain name via lookupMX
func validateDomainViaLookupMX(domain string) bool {
	valid, _ := net.LookupMX(domain)
	return len(valid) >= 1
}

// Validate a domain name via lookupTXT
func validateDomainViaLookupTXT(domain string) bool {
	valid, _ := net.LookupTXT(domain)
	return len(valid) >= 1
}
