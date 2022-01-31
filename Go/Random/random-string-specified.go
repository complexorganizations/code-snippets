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
		randomInt, err := rand.Int(rand.Reader, big.NewInt(int64(len(letters))))
		if err != nil {
			log.Fatalln(err)
		}
		randomString[i] = letters[randomInt.Int64()]
	}
	return string(randomString)
}
