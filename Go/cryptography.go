package main

import (
	"crypto/sha256"
	"fmt"
)

func main() {
	sum := sha256.Sum256([]byte("Hello, World!"))
	fmt.Printf("%x", sum)
}
