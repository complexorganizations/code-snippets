package main

import (
	"fmt"
	//"log"
	//"golang.org/x/crypto/chacha20poly1305"
)

func main() {
	// Decrypt some byte using chacha20poly1305
	// fmt.Println(decryptContentUsingChaCha20Poly1305([]byte{67, 250, 246, 54, 250, 159, 3, 106, 202, 89, 1, 70, 223, 188, 70, 105, 78, 244, 158, 202, 63, 123, 130, 42, 164, 5, 200, 144, 254, 37, 112, 183, 234, 99, 211, 84, 220, 224, 114, 203, 145, 144, 225, 68, 8, 18, 172, 213, 160, 156, 163, 207, 26, 252, 132, 206, 198, 189, 127, 195, 116, 40, 122, 168, 203, 14, 82, 47, 3, 184, 2, 113, 139, 228, 154, 29, 151, 14, 59, 27, 186, 36, 82, 245, 144, 254, 31, 112, 144, 235, 87}, []byte("this is a random password we use")))
	fmt.Println("Hello World")
}

/*
// Decrypt some byte using chacha20poly1305 and return the decrypted byte slice
func decryptContentUsingChaCha20Poly1305(content []byte, password []byte) []byte {
	aeadCipher, err := chacha20poly1305.NewX(password)
	if err != nil {
		log.Fatalln(err)
	}
	nonce, ciphertext := content[:aeadCipher.NonceSize()], content[aeadCipher.NonceSize():]
	plaintext, err := aeadCipher.Open(nil, nonce, ciphertext, nil)
	if err != nil {
		log.Fatalln(err)
	}
	return plaintext
}
*/
