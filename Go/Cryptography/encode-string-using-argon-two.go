package main

import (
	// "crypto/rand"
	// "encoding/hex"
	"fmt"
	// "log"
	// "golang.org/x/crypto/argon2"
)

func main() {
	// Using argon two encode bytes
	// fmt.Println(encodeByteUsingArgonTwo([]byte("WHV02Qkhv7JhD8g4YFt8"), 16, 32, 32*1024, 4, 3))
	fmt.Println("Hello, World!")
}

/*
// Encode bytes using argon two
func encodeByteUsingArgonTwo(password []byte, saltLen int64, keyLen uint32, memory uint32, threads uint8, time uint32) string {
	var salt = make([]byte, saltLen)
	_, err := rand.Read(salt)
	if err != nil {
		log.Fatalln(err)
	}
	return fmt.Sprintf("%d,%d,%d,%s,%s", memory, time, threads, hex.EncodeToString(salt), hex.EncodeToString(argon2.IDKey(password, salt, time, memory, threads, keyLen)))
}
*/
