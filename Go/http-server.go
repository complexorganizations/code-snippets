package main

import (
	"fmt"
	"log"
	"net/http"
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
}
