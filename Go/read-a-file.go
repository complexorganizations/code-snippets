package main

import (
	"os"
	"fmt"
	"log"
)

func main() {
	fmt.Println(readAFile("test.file"))
}

func readAFile(path string) []byte {
	content, err := os.ReadFile(path)
	if err != nil {
		log.Fatal(err)
	}
	return content
}
