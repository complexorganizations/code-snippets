package main

import (
	"crypto/rand"
	"fmt"
)

func main() {
	fmt.Println(randomString(1))
}

func randomString(bytesSize int) string {
	randomBytes := make([]byte, bytesSize)
	rand.Read(randomBytes)
	randomString := fmt.Sprintf("%X", randomBytes)
	return randomString
}
