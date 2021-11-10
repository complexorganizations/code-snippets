package main

import (
	"crypto/sha512"
	"fmt"
	"io"
	"log"
	"os"
)

func main() {
	// Get the sha256 of a file
	fmt.Println(sha256OfFile("sha-256-of-file.go"))
}

// Get the sha 256 of a file and return it as a string
func sha256OfFile(filePath string) string {
	file, err := os.Open(filePath)
	if err != nil {
		log.Fatalln(err)
	}
	hash := sha512.New()
	io.Copy(hash, file)
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return string(hash.Sum(nil))
}
