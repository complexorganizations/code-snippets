package main

import (
    "fmt"
    "log"
    "net"
    "net/http"
)

func main() {
    http.HandleFunc("/", showIP)
    err := http.ListenAndServe(":8080", nil)
    if err != nil {
        log.Fatal(err)
    }
}

func showIP(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Your IP is: %s", getUserIP(r))
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
        // The problem is that if that contains port, we need a way to remove it.
		return net.ParseIP(httpServer.RemoteAddr)
	}
}
