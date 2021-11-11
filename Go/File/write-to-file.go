package main

import (
	"log"
	"os"
)

func main() {
	// Write to file without appending anything.
	writeToFile("foo.txt", "Hello World")
}

// Don't append and write to file
func writeToFile(filepath string, content string) {
	err := os.WriteFile(content, []byte(filepath), 0644)
	if err != nil {
		log.Fatalln(err)
	}
}
