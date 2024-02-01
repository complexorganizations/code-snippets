package main

import (
	"crypto/tls"
	"fmt"
	"net/http"
	"net/url"
	"time"
)

func main() {
	fmt.Println(getProxyProtocol("34.125.137.39:8080"))
}

// Get the protocol of the proxy.
func getProxyProtocol(content string) []string {
	proxyProtocolList := []string{
		"http://",
		"https://",
		"socks4://",
		"socks5://",
	}
	var validProtocolList []string
	for _, protocol := range proxyProtocolList {
		finalString := protocol + content
		if validateProxy(finalString) {
			validProtocolList = append(validProtocolList, protocol)
		}
	}
	return validProtocolList
}

// Check if a given proxy is working and return a bool.
func validateProxy(proxy string) bool {
	proxyURL, err := url.Parse(proxy)
	if err != nil {
		return false
	}
	transport := &http.Transport{
		Proxy:           http.ProxyURL(proxyURL),
		TLSClientConfig: &tls.Config{InsecureSkipVerify: true},
	}
	client := &http.Client{
		Transport: transport,
		Timeout:   time.Second * 10,
	}
	requestDomainList := []string{
		"https://aws.amazon.com",
	}
	for _, domain := range requestDomainList {
		request, err := http.NewRequest("GET", domain, nil)
		if err != nil {
			return false
		}
		response, err := client.Do(request)
		if err != nil {
			return false
		}
		if response.StatusCode != 200 {
			return false
		}
		err = response.Body.Close()
		if err != nil {
			return false
		}
	}
	return true
}
