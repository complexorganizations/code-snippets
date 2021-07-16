package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	randomValues := []string{"hello", "world", "foo", "bar", "baz"}
	fmt.Println(getRandomString(randomValues))
}

// Get a random string from array
func getRandomString(arrayList []string) string {
	rand.Seed(time.Now().UTC().UnixNano())
	return arrayList[rand.Intn(len(arrayList))]
}
