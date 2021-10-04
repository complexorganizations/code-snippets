package main

import (
	"crypto/tls"
	"encoding/binary"
	"fmt"
	"log"
	"math/big"
	"net"
	"net/url"
	"strings"
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
	// Check if the ip is valid
	fmt.Println(checkIP("1.1.1.1"))
	fmt.Println(checkIP("266.266.266.266"))
	// Turn the ip into a decimal value.
	fmt.Println(ipToDecimal(net.ParseIP("1.1.1.1")))
	fmt.Println(ipToDecimal(net.ParseIP("2606:4700:4700::1111")))
	// Get the type of ip
	fmt.Println(checkIPType("1.1.1.1"))
	fmt.Println(checkIPType("2606:4700:4700::1111"))
	// Check if a ip is private.
	fmt.Println(privateIPCheck("10.8.0.1"))
	// Check if an ip is multicast
	fmt.Println(isMulticast("224.0.0.1"))
	// Check if an ip is unspecified
	fmt.Println(isUnspecified("0.0.0.0"))
	// Check if an ip is loopback
	fmt.Println(isLoopback("127.0.0.2"))
	// Add a cidr if no cidr is found
	fmt.Println(addCidr(net.ParseIP("1.1.1.1")))
	fmt.Println(addCidr(net.ParseIP("8.8.8.8/32"))) // Already contains a cidr
	// Check if a certain ip in a cidr range.
	firstCheck, err := cidrRangeContains("10.0.0.0/24", "10.0.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(firstCheck)
	// Check if a specific IP address is in a range of cidr.
	cidrRange := []string{
		"10.0.0.0/8",
		"fd00:00:00::0/8",
	}
	check, err := isIPinCIDR(cidrRange, "127.0.0.1")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(check)
	// Get a list of all IP addresses in a given subnet.
	ips, err := cidrToIP("10.0.0.0/24")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(ips)
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

// Check if the ip is valid
func checkIP(ip string) bool {
	return net.ParseIP(ip) != nil
}

// Turn the ip into a decimal value.
func ipToDecimal(ip net.IP) *big.Int {
	ipToIntValue := big.NewInt(0)
	if strings.Contains(ip.String(), ".") {
		ipToIntValue.SetBytes(ip.To4())
	} else if strings.Contains(ip.String(), ":") {
		ipToIntValue.SetBytes(ip.To16())
	}
	return ipToIntValue
}

// Note, before using this function, make sure the data given is a valid ip.
func checkIPType(ip string) string {
	if strings.Contains(ip, ".") {
		return "IPv4"
	} else if strings.Contains(ip, ":") {
		return "IPv6"
	}
	return ""
}

// Check if a ip is private.
func privateIPCheck(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsPrivate()
}

// check if an ip is multicast
func isMulticast(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsMulticast()
}

// check if an ip is unspecefied
func isUnspecified(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsUnspecified()
}

// Check if an ip is loopback
func isLoopback(ip string) bool {
	ipAddress := net.ParseIP(ip)
	return ipAddress.IsLoopback()
}

// Add a cidr if no cidr is found
func addCidr(ipToAddCidr net.IP) string {
	if strings.Contains(ipToAddCidr.String(), ".") {
		return ipToAddCidr.String() + "/32"
	} else if strings.Contains(ipToAddCidr.String(), ":") {
		return ipToAddCidr.String() + "/128"
	}
	return ipToAddCidr.String()
}

// Check if a certain ip in a cidr range.
func cidrRangeContains(cidrRange string, checkIP string) (bool, error) {
	_, ipnet, err := net.ParseCIDR(cidrRange)
	if err != nil {
		return false, err
	}
	secondIP := net.ParseIP(checkIP)
	return ipnet.Contains(secondIP), nil
}

// Check if a specific IP address is in a range of cidr.
func isIPinCIDR(cidrSlice []string, networkIdentity string) (bool, error) {
	for _, cidr := range cidrSlice {
		if strings.Contains(cidr, "/") {
			_, ipnet, err := net.ParseCIDR(cidr)
			if err != nil {
				return false, err
			}
			if ipnet.Contains(net.ParseIP(networkIdentity)) {
				return true, nil
			}
		}
	}
	return false, nil
}

// Get a list of all IP addresses in a given subnet.
func cidrToIP(cidr string) ([]string, error) {
	_, ipv4Net, err := net.ParseCIDR(cidr)
	if err != nil {
		return nil, err
	}
	mask := binary.BigEndian.Uint32(ipv4Net.Mask)
	start := binary.BigEndian.Uint32(ipv4Net.IP)
	finish := (start & mask) | (mask ^ 0xffffffff)
	var ips []string
	for i := start; i <= finish; i++ {
		ip := make(net.IP, 4)
		binary.BigEndian.PutUint32(ip, i)
		ips = append(ips, ip.String())
	}
	return ips, nil
}
