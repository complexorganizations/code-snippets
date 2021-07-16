package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	fmt.Println(randomInt(1, 10))
}

// generate a random integer
func randomInt(min, max int) int {
	rand.Seed(time.Now().UTC().UnixNano())
	return rand.Intn(max-min) + min
}
