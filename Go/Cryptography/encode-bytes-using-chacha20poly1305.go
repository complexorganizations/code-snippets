package main

import (
	//"crypto/rand"
	"fmt"
	// "log"

	// "golang.org/x/crypto/chacha20poly1305"
)

func main() {
	//fmt.Println(encryptContentUsingChaCha20Poly1305([]byte("this is the random content that we want to encrypt."), []byte("this is a random password we use")))
	fmt.Println("Hello, World!")
}

/*
// Encrypt some byte using chacha20poly1305 and return the encrypted byte slice
func encryptContentUsingChaCha20Poly1305(content []byte, password []byte) []byte {
	aeadCipher, err := chacha20poly1305.NewX(password)
	if err != nil {
		log.Fatalln(err)
	}
	nonce := make([]byte, aeadCipher.NonceSize(), aeadCipher.NonceSize()+len(content)+aeadCipher.Overhead())
	_, err = rand.Read(nonce)
	if err != nil {
		log.Fatalln(err)
	}
	return aeadCipher.Seal(nonce, nonce, content, nil)
}
*/
