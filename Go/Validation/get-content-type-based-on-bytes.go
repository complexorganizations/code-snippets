package main

import (
	"bytes"
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Get the content type of bytes
	fmt.Println(getContentTypeBasedOnBytes([]byte(`Hello, World!`)))
}

// Get the content type of bytes
func getContentTypeBasedOnBytes(content []byte) string {
	buffer := make([]byte, len(content))
	_, err := io.ReadFull(bytes.NewReader(content), buffer)
	if err != nil {
		log.Fatalln(err)
	}
	return http.DetectContentType(buffer)
}
