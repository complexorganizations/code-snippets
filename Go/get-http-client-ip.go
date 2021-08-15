package main

import (
    "fmt"
    "log"
    "net"
    "net/http"
    "strings"
)

func main() {
    http.HandleFunc("/", getUserIP)
    err := http.ListenAndServe(":8080", nil)
    if err != nil {
        log.Fatal(err)
    }
}

// Get the IP address of the server's connected user.
func getUserIP(httpWriter http.ResponseWriter, httpServer *http.Request) {
    var userIP string
    if len(httpServer.Header.Get("CF-Connecting-IP")) > 1 {
        userIP = httpServer.Header.Get("CF-Connecting-IP")
        fmt.Println(net.ParseIP(userIP))
    } else if len(httpServer.Header.Get("X-Forwarded-For")) > 1 {
        userIP = httpServer.Header.Get("X-Forwarded-For")
        fmt.Println(net.ParseIP(userIP))
    } else if len(httpServer.Header.Get("X-Real-IP")) > 1 {
        userIP = httpServer.Header.Get("X-Real-IP")
        fmt.Println(net.ParseIP(userIP))
    } else {
        userIP = httpServer.RemoteAddr
        if strings.Contains(userIP, ":") {
            fmt.Println(net.ParseIP(strings.Split(userIP, ":")[0]))
        } else {
            fmt.Println(net.ParseIP(userIP))
        }
    }
}
