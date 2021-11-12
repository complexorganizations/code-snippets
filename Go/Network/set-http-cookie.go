package main

import (
	"io"
	"log"
	"net/http"
	"os"
	"time"
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
	// Set the cookie in the response header.
	setCookieInResponse(writer, "hello", "world", time.Now().Add(time.Hour))
	// Write the response
	io.WriteString(writer, "Hello, world!\n")
}

// Set the cookie in the response header.
func setCookieInResponse(writer http.ResponseWriter, key string, value string, expires time.Time) {
	cookie := &http.Cookie{
		Name:    key,
		Value:   value,
		Expires: expires,
	}
	http.SetCookie(writer, cookie)
}
