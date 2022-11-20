package main

import (
	"crypto/hmac"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"log"
)

func main() {
	// Validate HMAC for message authentication
	fmt.Println(validateHMACMassageAuthentication([]byte("Hello, World!"), []byte("password"), "4e696deff603518c8ac88eefa7edbc69eccea36add3cdce64c4a68fead84fea4"))
}

// Validate HMAC for message authentication
func validateHMACMassageAuthentication(content []byte, password []byte, contentSHA string) bool {
	decodedSHA, err := hex.DecodeString(contentSHA)
	if err != nil {
		log.Fatalln(err)
	}
	mac := hmac.New(sha256.New, password)
	mac.Write(content)
	return hmac.Equal(decodedSHA, mac.Sum(nil))
}
