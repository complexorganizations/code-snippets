package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/", hello)
    http.ListenAndServe(":8080", nil)
}

func hello(w http.ResponseWriter, req *http.Request) {
	// Replace the header
	w.Header().Set("Content-Type", "application/json")
	// Add the header
	w.Header().Set("Access-Control-Allow-Methods", "GET")
	// Write the response
	fmt.Fprintf(w, "Hello, %s", req.URL.Path[1:])
}
