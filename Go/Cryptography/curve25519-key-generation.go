package main

import (
	"crypto/rand"
	"fmt"
	"log"

	"golang.org/x/crypto/curve25519"
)

func main() {
	// Generate a key pair for Alice
	alicePrivateKey, alicePublicKey := generateCurve25519KeyPair()
	fmt.Printf("Private key for alice %x\n", alicePrivateKey)
	fmt.Printf("Public key for alice %x\n", alicePublicKey)
	// Generate a key pair for Bob
	bobPrivateKey, bobPublicKey := generateCurve25519KeyPair()
	fmt.Printf("Private key for bob %x\n", bobPrivateKey)
	fmt.Printf("Public key for bob %x\n", bobPublicKey)
	// Generate a shared secret for Alice
	sharedKeyForAlice := generateSharedSecretUsingCurve25519(alicePrivateKey, bobPublicKey)
	fmt.Printf("Shared key for alice %x\n", sharedKeyForAlice)
	// Generate a shared secret for Bob
	sharedKeyForBob := generateSharedSecretUsingCurve25519(bobPrivateKey, alicePublicKey)
	fmt.Printf("Shared key for bob %x\n", sharedKeyForBob)
}

// Generate a random private key and public key pair.
func generateCurve25519KeyPair() ([]byte, []byte) {
	var privateKey [32]byte
	copy(privateKey[:], randomBytesArray(32))
	var publicKey [32]byte
	copy(publicKey[:], randomBytesArray(32))
	curve25519.ScalarBaseMult(&publicKey, &privateKey)
	return privateKey[:], publicKey[:]
}

// Generate a shared secret.
func generateSharedSecretUsingCurve25519(privateKey []byte, publicKey []byte) []byte {
	sharedSecret, err := curve25519.X25519(privateKey, publicKey)
	if err != nil {
		log.Fatalln(err)
	}
	return sharedSecret
}

// Generate a random byte array and return it.
func randomBytesArray(length int) []byte {
	randomBytes := make([]byte, length)
	_, err := rand.Read(randomBytes)
	if err != nil {
		log.Fatalln(err)
	}
	return randomBytes
}
