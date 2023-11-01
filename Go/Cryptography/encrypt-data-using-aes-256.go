package main

import (
	"crypto/aes"
	"crypto/cipher"
	"crypto/rand"
	"fmt"
	"io"
	"log"
)

func main() {
	encryptedText := encryptDataUsingAES256([]byte("content"), *(*[32]byte)([]byte("wvkioqzsmqpacnbcnoocgcwqjfgzypaa")))
	fmt.Println(encryptedText)
}

// Encrypt data using aes-256
func encryptDataUsingAES256(content []byte, password [32]byte) []byte {
	block, err := aes.NewCipher(password[:])
	if err != nil {
		log.Fatalln(err)
	}
	gcm, err := cipher.NewGCM(block)
	if err != nil {
		log.Fatalln(err)
	}
	nonce := make([]byte, gcm.NonceSize())
	_, err = io.ReadFull(rand.Reader, nonce)
	if err != nil {
		log.Fatalln(err)
	}
	return gcm.Seal(nonce, nonce, content, nil)
}
