package main

import (
	"fmt"
	"io"
	"log"
	"os"

	"golang.org/x/crypto/sha3"
)

func main() {
	// Using sha3-512 get the hash of a given file
	fmt.Println(sha3Using512OfGivenFile("assets/valid/valid-json.json"))
}

// Using sha3-512 get the hash of a given file
func sha3Using512OfGivenFile(path string) string {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	hash := sha3.New512()
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
