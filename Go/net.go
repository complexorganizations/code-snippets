package main

import (
	"crypto/tls"
	"fmt"
	"log"
	"net"
	"net/url"
)

func main() {
	// Split a ip address and port number
	returnIP, port, err := splitPortFromIP("1.1.1.1:8080")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(returnIP)
	fmt.Println(port)
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
	// Ping an ip address
	if pingAnIP("tcp", "0.0.0.0", "443") {
		fmt.Println("Send the request successfully.")
	}
	// Validate all the SSL Certs
	valid, err := validateSSLCert("https://www.google.com")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(valid)
}

// Split a ip address and port number
func splitPortFromIP(ipPort string) (string, string, error) {
	ip, port, err := net.SplitHostPort(ipPort)
	if err != nil {
		return "", "", err
	}
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

// Ping an ip address
func pingAnIP(methord string, ip string, port string) bool {
	pingThis := fmt.Sprint(ip + ":" + port)
	_, err := net.Dial(methord, pingThis)
	return err == nil
}

// Validate all the SSL Certs
func validateSSLCert(hostname string) (bool, error) {
	parsedURL, err := url.Parse(hostname)
	if err != nil {
		log.Fatal(err)
	}
	parsedHostname := fmt.Sprint(parsedURL.Hostname())
	callTCP, err := tls.Dial("tcp", parsedHostname+":443", nil)
	if err != nil {
		return false, err
	}
	callTCP.Close()
	err = callTCP.VerifyHostname(parsedHostname)
	if err != nil {
		return false, err
	}
	return true, nil
}
