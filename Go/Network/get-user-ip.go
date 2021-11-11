package main

import (
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", helloHandler)
	os.Exit(0) // Remove this line; it's there to ensure that automated testing doesn't continue on indefinitely.
	// Listen and serve on port 8080.
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Fatalln(err)
	}
}

// The data to set on the server.
func helloHandler(writer http.ResponseWriter, request *http.Request) {
	// Write the response
	io.WriteString(writer, "Hello, world!\n")
	// Get the IP address of the user connected to the server.
	fmt.Println(geIPFromHTTP(request))
}

// Get the IP address of the user connected to the server.
func geIPFromHTTP(request *http.Request) net.IP {
	if len(request.Header.Get("CF-Connecting-IP")) > 1 {
		return net.ParseIP(request.Header.Get("CF-Connecting-IP"))
	} else if len(request.Header.Get("X-Forwarded-For")) > 1 {
		return net.ParseIP(request.Header.Get("X-Forwarded-For"))
	} else if len(request.Header.Get("X-Real-IP")) > 1 {
		return net.ParseIP(request.Header.Get("X-Real-IP"))
	} else {
		returnIP, _, err := net.SplitHostPort(request.RemoteAddr)
		if err != nil {
			return nil
		}
		return net.ParseIP(returnIP)
	}
}
