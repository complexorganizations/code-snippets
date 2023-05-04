package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Read a file and than print the content as bytes.
	fmt.Println(readFileAndReturnAsByte("assets/valid/valid-json.json"))
}

// Read a file and return the content as byte slice.
func readFileAndReturnAsByte(path string) []byte {
	content, err := os.ReadFile(path)
	if err != nil {
		log.Fatalln(err)
	}
	return content
}
