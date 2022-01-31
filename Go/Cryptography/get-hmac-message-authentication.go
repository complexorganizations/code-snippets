package main

import (
	"crypto/hmac"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
)

func main() {
	// Get the hmac message authentication
	fmt.Println(getHMACMessageAuthentication([]byte("Hello, World!"), []byte("password")))
}

// Get the hmac message authentication
func getHMACMessageAuthentication(content []byte, password []byte) string {
	hash := hmac.New(sha256.New, password)
	hash.Write(content)
	return hex.EncodeToString(hash.Sum(nil))
}
