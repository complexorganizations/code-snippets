package main

import (
	//"crypto/rand"
	//"encoding/hex"
	"fmt"
	//"log"

	//"golang.org/x/crypto/argon2"
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
	keyLength: 512,
	memory:    65536,
	salt:      make([]byte, 512),
	threads:   4,
	time:      60,
}

func main() {
	// Generate a hash of the given password
	passwordHash := encodeStringUsingArgonTwo(argonConfiguration, "WHV02Qkhv7JhD8g4YFt8")
	fmt.Println(passwordHash)
}

func encodeStringUsingArgonTwo(argonSettings *argonConfig, password string) string {
	// Generate a random salt
	_, err := rand.Read(argonSettings.salt)
	if err != nil {
		log.Fatalln(err)
	}
	// Generate a hash
	return fmt.Sprintf("%d,%d,%d,%s,%s", argonSettings.memory, argonSettings.time, argonSettings.threads, hex.EncodeToString(argonSettings.salt), hex.EncodeToString(argon2.IDKey([]byte(password), argonSettings.salt, argonSettings.time, argonSettings.memory, argonSettings.threads, argonSettings.keyLength)))
}
*/

func main() {
	fmt.Println("Hello, World!")
}
