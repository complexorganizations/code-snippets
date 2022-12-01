package main

import (
	"crypto/rand"
	"fmt"
	"log"
	"math/big"
)

func main() {
	// Generate a random bool.
	fmt.Println(generateRandomBool())
}

// Generate a random bool and than return it.
func generateRandomBool() bool {
	randomInt, err := rand.Int(rand.Reader, big.NewInt(int64(2)))
	if err != nil {
		log.Fatalln(err)
	}
	return int(randomInt.Int64()) == int(1)
}
