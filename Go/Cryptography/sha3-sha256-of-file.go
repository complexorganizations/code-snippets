package main

import (
	"fmt"
	"io"
	"log"
	"os"

	"golang.org/x/crypto/sha3"
)

func main() {
	// Get the hash using SHA3-256 of a given file
	fmt.Println(sha3Using256OfGivenFile("assets/valid/valid-json.json"))
}

// Get the hash of a file using SHA3-256.
func sha3Using256OfGivenFile(path string) string {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	hash := sha3.New256()
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
