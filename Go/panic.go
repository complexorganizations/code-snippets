package main

import (
	"os"
	"log"
)

func main() {
	err := os.Remove("some-file")
	if err != nil {
		log.Fatal(err)
	}
}
