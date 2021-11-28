package main

import (
	"crypto/ed25519"
	"fmt"
	"log"
)

func main() {
	// Generate a key pair using the Ed25519 curve.
	publicKey, privateKey := generateKeyPairUsingED25519()
	fmt.Println("Public key:", publicKey)
	fmt.Println("Private key:", privateKey)
}

// Generate a key pair using the Ed25519 curve.
func generateKeyPairUsingED25519() (string, string) {
	publicKey, privateKey, err := ed25519.GenerateKey(nil)
	if err != nil {
		log.Fatalln(err)
	}
	return fmt.Sprintf("%x", publicKey), fmt.Sprintf("%x", privateKey)
}
