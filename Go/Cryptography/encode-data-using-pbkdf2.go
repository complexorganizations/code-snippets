package main

import (
	// "crypto/rand"
	// "crypto/sha512"
	// "encoding/hex"
	"fmt"
	// "log"
	// "golang.org/x/crypto/pbkdf2"
)

func main() {
	// Encode data using pbkdf2.
	// fmt.Println(encodeDataUsingPbkdf2([]byte("random-test-password"), 128, 1048576, 64))
	fmt.Println("Hello, World!")
}

/*
// Encode data using pbkdf2.
func encodeDataUsingPbkdf2(password []byte, saltLength int, iterations int, keyLength int) string {
	randomSalt := make([]byte, saltLength)
	_, err := rand.Read(randomSalt)
	if err != nil {
		log.Fatalln(err)
	}
	return fmt.Sprintf("%s,%s,%d", hex.EncodeToString(pbkdf2.Key(password, randomSalt, iterations, keyLength, sha512.New)), hex.EncodeToString(randomSalt), iterations)
}
*/
