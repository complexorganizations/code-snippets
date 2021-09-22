package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	// Get a random string of length 16
	fmt.Println(randomString(16))
	// Get a random string with the length and characters you want.
	fmt.Println(randomStringSpecified(10))
	// Get a random string from array
	arrayList := []string{"a", "b", "c", "d", "e"}
	fmt.Println(getRandomStringFromArray(arrayList))
	// Get the random integer between 0 and 10
	fmt.Println(randomInt(0, 10))
	// Generate a random bool
	fmt.Println(randomBool())
}

// Get a random string of length
func randomString(bytesSize int) string {
	rand.Seed(time.Now().UTC().UnixNano())
	randomBytes := make([]byte, bytesSize/2)
	rand.Read(randomBytes)
	return fmt.Sprintf("%X", randomBytes)
}

// Get a random string with a specified length and characters.
func randomStringSpecified(bytesSize int) string {
	rand.Seed(time.Now().UTC().UnixNano())
	// ABCDEFGHIJKLMNOPQRSTUVWXYZ, abcdefghijklmnopqrstuvwxyz, 0123456789
	letters := []rune("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789")
	randomString := make([]rune, bytesSize)
	for i := range randomString {
		randomString[i] = letters[rand.Intn(len(letters))]
	}
	return string(randomString)
}

// Get a random string from array
func getRandomStringFromArray(arrayList []string) string {
	rand.Seed(time.Now().UTC().UnixNano())
	return arrayList[rand.Intn(len(arrayList))]
}

// generate a random integer
func randomInt(min, max int) int {
	rand.Seed(time.Now().UTC().UnixNano())
	return rand.Intn(max-min) + min
}

// Generate a random boolean value
func randomBool() bool {
	return rand.Intn(2) == 1
}
