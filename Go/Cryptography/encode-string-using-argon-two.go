package main

import (
	// "crypto/rand"
	// "encoding/hex"
	"fmt"
	// "log"
	// "math/big"
	// "golang.org/x/crypto/argon2"
)

/*
// The config for Argon2
type argonConfig struct {
	keyLength uint32
	memory    uint32
	salt      []byte
	threads   uint8
	time      uint32
}

var argonConfiguration = &argonConfig{
	keyLength: uint32(randomIntBetween(1024*1, 1024*32)),
	memory:    uint32(randomIntBetween(1024*512, 1024*1024)),
	salt:      make([]byte, randomIntBetween(1024*1, 1024*32)),
	threads:   uint8(randomIntBetween(32*1, 32*5)),
	time:      uint32(randomIntBetween(60*1, 60*5)),
}
*/

func main() {
	fmt.Println("Hello, World!")
	// Generate a hash of the given password
	// fmt.Println(encodeStringUsingArgonTwo(argonConfiguration, "WHV02Qkhv7JhD8g4YFt8"))
}

/*
func encodeStringUsingArgonTwo(argonSettings *argonConfig, password string) string {
	// Generate a random salt
	_, err := rand.Read(argonSettings.salt)
	if err != nil {
		log.Fatalln(err)
	}
	// Generate a hash
	return fmt.Sprintf("%d,%d,%d,%s,%s", argonSettings.memory, argonSettings.time, argonSettings.threads, hex.EncodeToString(argonSettings.salt), hex.EncodeToString(argon2.IDKey([]byte(password), argonSettings.salt, argonSettings.time, argonSettings.memory, argonSettings.threads, argonSettings.keyLength)))
}

// Generate a random int between two numbers
func randomIntBetween(min int, max int) int {
	return generateRandomInt(int64(max-min)) + min
}

// Generate a random int between 0 and a given max
func generateRandomInt(max int64) int {
	randomInt, err := rand.Int(rand.Reader, big.NewInt(max))
	if err != nil {
		log.Fatalln(err)
	}
	return int(randomInt.Int64())
}
*/
