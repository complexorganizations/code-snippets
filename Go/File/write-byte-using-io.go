package main

import (
	"bytes"
	"io"
	"log"
	"os"
)

func main() {
	// Write to a file.
	writeContentToFle("foo.txt", []byte("Hello, World!"))
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
