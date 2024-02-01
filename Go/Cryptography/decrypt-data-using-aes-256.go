package main

import (
	"crypto/aes"
	"crypto/cipher"
	"fmt"
	"log"
)

func main() {
	fmt.Println(string(decryptDataUsingAES256([]byte{251, 178, 167, 165, 138, 115, 31, 209, 172, 144, 78, 219, 137, 33, 71, 81, 143, 37, 186, 193, 25, 82, 130, 55, 86, 204, 90, 18, 38, 141, 201, 44, 3, 139, 106}, []byte("wvkioqzsmqpacnbcnoocgcwqjfgzypaa"))))
}

// Decrypt data using aes-256
func decryptDataUsingAES256(content []byte, password []byte) []byte {
	block, err := aes.NewCipher(password)
	if err != nil {
		log.Fatalln(err)
	}
	gcm, err := cipher.NewGCM(block)
	if err != nil {
		log.Fatalln(err)
	}
	nonce := content[:gcm.NonceSize()]
	content = content[gcm.NonceSize():]
	plaintext, err := gcm.Open(nil, nonce, content, nil)
	if err != nil {
		log.Fatalln(err)
	}
	return plaintext
}
