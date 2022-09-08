package main

import (
	"io"
	"log"
	"net/http"
	"os"
	"strings"
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
	// https://owasp.org/www-community/attacks/Log_Injection
	username := request.URL.Path
	escapedUsername := strings.Replace(username, "\n", "", -1)
	escapedUsername = strings.Replace(escapedUsername, "\r", "", -1)
	log.Printf("%s\n", escapedUsername)
}
