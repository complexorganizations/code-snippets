package main

import (
	"bytes"
	"compress/gzip"
	"io"
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
	content := "Hello, World!"
	var byteBuffer bytes.Buffer
	gzipWriter := gzip.NewWriter(&byteBuffer)
	gzipWriter.Write([]byte(content))
	gzipWriter.Close()
	io.WriteString(w, byteBuffer.String())
}
