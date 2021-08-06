package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	fmt.Println(randomString(64))
}

func randomString(bytesSize int) string {
	rand.Seed(time.Now().UTC().UnixNano())
	randomBytes := make([]byte, bytesSize)
	rand.Read(randomBytes)
	randomString := fmt.Sprintf("%X", randomBytes)
	return randomString
}
