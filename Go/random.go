package main

import (
	"crypto/rand"
	"fmt"
	"log"
	"math/big"
)

func main() {
	// Get a random string of length 16
	fmt.Println(randomString(16))
	// Get a random string with the length and characters you want.
	fmt.Println(randomStringSpecified(10))
	// Get a random string from array
	arrayList := []string{"a", "b", "c", "d", "e"}
	fmt.Println(getRandomStringFromArray(arrayList))
	// Generate a random bool
	fmt.Println(randomBool())
	// Generate a random byte array of given length
	fmt.Println(randomByteArray(10))
	// Generate a secure random int between 0 and 100
	fmt.Println(secureRandomInt(100))
	// Generate a random int between two numbers
	fmt.Println(randomIntBetween(1, 10))
	// Generate a random uuid
	fmt.Println(randomUUID())
}

// Get a random string of length
func randomString(bytesSize int) string {
	randomBytes := make([]byte, bytesSize/2)
	rand.Read(randomBytes)
	return fmt.Sprintf("%X", randomBytes)
}

// Get a random string with a specified length and characters.
func randomStringSpecified(bytesSize int64) string {
	// ABCDEFGHIJKLMNOPQRSTUVWXYZ, abcdefghijklmnopqrstuvwxyz, 0123456789 ~!@#$%^&*()-_+={}][|\`,./?;:'"<>
	letters := []rune("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()-_+={}][|\\`,./?;:'\"<>")
	randomString := make([]rune, bytesSize/2)
	for i := range randomString {
		randomString[i] = letters[secureRandomInt(int64(len(letters)))]
	}
	return string(randomString)
}

// Get a random string from array
func getRandomStringFromArray(arrayList []string) string {
	return arrayList[secureRandomInt(int64(len(arrayList)))]
}

// Generate a random boolean value
func randomBool() bool {
	return secureRandomInt(2) == 1
}

// Get a random byte array of given length
func randomByteArray(length int) []byte {
	randomBytes := make([]byte, length)
	rand.Read(randomBytes)
	return randomBytes
}

// Securely generate a random int
func secureRandomInt(max int64) int64 {
	someRandomNumber, err := rand.Int(rand.Reader, big.NewInt(max))
	if err != nil {
		log.Fatalln(err)
	}
	return someRandomNumber.Int64()
}

// Generate a random int between two numbers
func randomIntBetween(min int, max int) int64 {
	return secureRandomInt(int64(max-min)) + int64(min)
}

// Generate a random uuid string
func randomUUID() string {
	return fmt.Sprintf("%X-%X-%X-%X-%X",
		randomByteArray(4),
		randomByteArray(2),
		randomByteArray(2),
		randomByteArray(2),
		randomByteArray(6))
}
