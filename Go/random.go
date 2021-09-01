package main

import (
	"math/rand"
	"time"
	"fmt"
)

func main() {
	// Get a random string of length 16
	fmt.Println(randomString(16))
	// Get a random string from array
	fmt.Println(getRandomStringFromArray([]string{"a", "b", "c", "d", "e"}))
	// Get the random integer between 0 and 10
	fmt.Println(randomInt(0, 10))

}

// Get a random string of length
func randomString(bytesSize int) string {
	rand.Seed(time.Now().UTC().UnixNano())
	randomBytes := make([]byte, bytesSize)
	rand.Read(randomBytes)
	randomString := fmt.Sprintf("%X", randomBytes)
	return randomString
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
