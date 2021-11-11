package main

import (
	"bytes"
	"compress/gzip"
	"log"
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
	// Set the proper headers.
	writer.Header().Set("Content-Encoding", "gzip")
	writer.Header().Set("Content-Type", "text/plain")
	// Create a buffer to write the data to.
	var buffer bytes.Buffer
	// Create a gzip writer.
	gzipWriter := gzip.NewWriter(&buffer)
	// Write the data to the gzip writer.
	gzipWriter.Write([]byte("Hello, World!"))
	// Close the gzip writer.
	err := gzipWriter.Close()
	if err != nil {
		log.Fatalln(err)
	}
	// Write the data to the response.
	_, err = writer.Write(buffer.Bytes())
	if err != nil {
		log.Fatalln(err)
	}
}
