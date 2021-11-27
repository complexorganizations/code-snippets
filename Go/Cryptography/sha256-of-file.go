package main

import (
	"crypto/sha256"
	"fmt"
	"io"
	"log"
	"os"
)

func main() {
	// Get the sha256 of a given file.
	fmt.Println(getSHA256OfFile("assets/valid/valid-txt.txt"))
}

// Get the sha256 of a given file.
func getSHA256OfFile(path string) string {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	hash := sha256.New()
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
