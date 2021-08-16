package main

import (
	"fmt"
	"log"
	"net"
	"net/http"
	"strings"
)

func main() {
	// Route to the hello function
	http.HandleFunc("/", hello)
	// Listen and serve on port 8080.
	err := http.ListenAndServe(":8080", nil)
	// Return an error if something went wrong
	if err != nil {
		log.Println(err)
	}
}

// The content to write to the response
func hello(w http.ResponseWriter, req *http.Request) {
	fmt.Fprintf(w, "Hello, World!")
	logAllRequests(w, req)
}

// Log all requests to the console.
func logAllRequests(w http.ResponseWriter, req *http.Request) {
	log.Printf("Methord: %s URL: %s IP: %s", req.Method, req.URL, getUserIP(w, req))
}

// Get the IP address of the server's connected user.
func getUserIP(httpWriter http.ResponseWriter, httpServer *http.Request) net.IP {
	var userIP string
	if len(httpServer.Header.Get("CF-Connecting-IP")) > 1 {
		userIP = httpServer.Header.Get("CF-Connecting-IP")
		return net.ParseIP(userIP)
	} else if len(httpServer.Header.Get("X-Forwarded-For")) > 1 {
		userIP = httpServer.Header.Get("X-Forwarded-For")
		return net.ParseIP(userIP)
	} else if len(httpServer.Header.Get("X-Real-IP")) > 1 {
		userIP = httpServer.Header.Get("X-Real-IP")
		return net.ParseIP(userIP)
	} else {
		userIP = httpServer.RemoteAddr
		if strings.Contains(userIP, ":") {
			return net.ParseIP(strings.Split(userIP, ":")[0])
		} else {
			return net.ParseIP(userIP)
		}
	}
}
