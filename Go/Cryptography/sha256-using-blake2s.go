package main

import (
	"fmt"
	// "log"

	// "golang.org/x/crypto/blake2s"
)

func main() {
	// Get a SHA-256 using blake2s.
	// fmt.Printf("%x", getSHA256UsingBlake2s([]byte("Hello World!")))
	fmt.Println("Hello, World!")
}

/*
// Using the blake2s package, get the sha256 of a given string.
func getSHA256UsingBlake2s(content []byte) []byte {
	hash, err := blake2s.New256(nil)
	if err != nil {
		log.Fatalln(err)
	}
	_, err = hash.Write(content)
	if err != nil {
		log.Fatalln(err)
	}
	return hash.Sum(nil)
}
*/
