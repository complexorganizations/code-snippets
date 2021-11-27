package main

import (
	"crypto/sha512"
	"fmt"
	"io"
	"log"
	"os"
)

func main() {
	// Get the sha512 of a file.
	fmt.Println(getSHA512OfFile("assets/valid/valid-txt.txt"))
}

// Get the sha512 of a given file.
func getSHA512OfFile(path string) string {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	hash := sha512.New()
	_, err = io.Copy(hash, file)
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return fmt.Sprintf("%x", hash.Sum(nil))
}
