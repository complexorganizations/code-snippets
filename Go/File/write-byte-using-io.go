package main

import (
	"bytes"
	"io"
	"log"
	"os"
)

func main() {
	// Write to a file.
	writeContentToFle("assets/remove/85HpiF966p9hLTv6r37YBxqq9xomF6D3", []byte("Hello, World!"))
}

// Write to a file.
func writeContentToFle(path string, content []byte) {
	file, err := os.Create(path)
	if err != nil {
		log.Fatalln(err)
	}
	_, err = io.Copy(file, bytes.NewReader(content))
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
