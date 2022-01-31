package main

import (
	"crypto/rand"
	"fmt"
	"log"
	"math/big"
)

func main() {
	// Generate a random string of a given length.
	fmt.Println(randomStringSpecifiedOfGivenLength(10))
}

// Generate a random string of a given length and return it.
func randomStringSpecifiedOfGivenLength(length int) string {
	// ABCDEFGHIJKLMNOPQRSTUVWXYZ, abcdefghijklmnopqrstuvwxyz, 0123456789 ~!@#$%^&*()-_+={}][|\`,./?;:'"<>
	letters := []rune("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()-_+={}][|\\`,./?;:'\"<>")
	randomString := make([]rune, length)
	for i := range randomString {
		randomString[i] = letters[generateRandomInt(int64(len(letters)))]
	}
	return string(randomString)
}

// Generate a random int between 0 and a given max
func generateRandomInt(max int64) int {
	randomInt, err := rand.Int(rand.Reader, big.NewInt(max))
	if err != nil {
		log.Fatalln(err)
	}
	return int(randomInt.Int64())
}
