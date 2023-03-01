package main

import (
	"io"
	"log"
	"os"
)

func main() {
	// Read a file and than return the content as bytes.
	readFileAndReturnAsBytes("assets/valid/valid-json.json")
}

// Read a file and than return the content as bytes
func readFileAndReturnAsBytes(path string) []byte {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	content, err := io.ReadAll(file)
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return content
}
