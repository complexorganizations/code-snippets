package main

import (
	"crypto/rand"
	"fmt"
)

func main() {
	fmt.Println(randomString(1))
}

func randomString(byteSize int) []byte {
	randomByte := make([]byte, byteSize)
	rand.Read(randomByte)
	return randomByte
}
