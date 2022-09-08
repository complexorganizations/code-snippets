package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Read a file and print the contents
	fmt.Println(readAFileAsString("assets/valid/valid-txt.txt"))
}

// Read a file and return the contents
func readAFileAsString(path string) string {
	content, err := os.ReadFile(path)
	if err != nil {
		log.Fatalln(err)
	}
	return string(content)
}
