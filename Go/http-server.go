package main

import (
	"bytes"
	"compress/gzip"
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
)

func main() {
	// Route to the hello function
	http.HandleFunc("/", hello)
	// Route to the gzip function
	http.HandleFunc("/gzip", gzipHttp)
	// Listen and serve on port 8080.
	err := http.ListenAndServe(":8080", nil)
	// Return an error if something went wrong
	if err != nil {
		log.Println(err)
	}
}

// The content to write to the response
func hello(w http.ResponseWriter, req *http.Request) {
	// Replace the header
	w.Header().Set("Content-Type", "application/json")
	// Add the header
	w.Header().Set("Access-Control-Allow-Methods", "GET")
	// Write the response
	fmt.Fprintf(w, "Hello, World!")
	// Get the IP address of the user
	fmt.Fprintf(w, "Your IP is: %s", getUserIP(req))
	// Log the request
	log.Printf("Methord: %s URL: %s IP: %s", req.Method, req.URL, getUserIP(req))
}

// Get the IP address of the server's connected user.
func getUserIP(httpServer *http.Request) net.IP {
	if len(httpServer.Header.Get("CF-Connecting-IP")) > 1 {
		return net.ParseIP(httpServer.Header.Get("CF-Connecting-IP"))
	} else if len(httpServer.Header.Get("X-Forwarded-For")) > 1 {
		return net.ParseIP(httpServer.Header.Get("X-Forwarded-For"))
	} else if len(httpServer.Header.Get("X-Real-IP")) > 1 {
		return net.ParseIP(httpServer.Header.Get("X-Real-IP"))
	} else {
		returnIP, _, _ := net.SplitHostPort(httpServer.RemoteAddr)
		return net.ParseIP(returnIP)
	}
}

// The content to write to the response
func gzipHttp(w http.ResponseWriter, req *http.Request) {
	w.Header().Set("Content-Encoding", "gzip")
	content := "Hello, World!"
	var byteBuffer bytes.Buffer
	gzipWriter := gzip.NewWriter(&byteBuffer)
	gzipWriter.Write([]byte(content))
	gzipWriter.Close()
	io.WriteString(w, byteBuffer.String())
}
