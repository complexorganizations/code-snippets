package main

import (
	// "crypto/rand"
	// "crypto/sha512"
	"fmt"
	// "log"

	// "golang.org/x/crypto/hkdf"
)

func main() {
	// Using hkdf encryption
	// fmt.Printf("%x", hkdfKeyDerivation([]byte("secret"), []byte("Test")))
	fmt.Println("Hello, World!")
}

/*
// Using hkdf encryption
func hkdfKeyDerivation(secret []byte, info []byte) []byte {
	randomSalt := make([]byte, 512)
	_, err := rand.Read(randomSalt)
	if err != nil {
		log.Fatalln(err)
	}
	hkdf := hkdf.New(sha512.New, secret, randomSalt, info)
	key := make([]byte, 32)
	_, err = hkdf.Read(key)
	if err != nil {
		log.Fatalln(err)
	}
	return key
}
*/