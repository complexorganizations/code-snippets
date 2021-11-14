package main

import (
	"log"
	"os"
)

func main() {
	// Write to file without appending anything.
	writeToFile("bar.txt", "Hello World")
}

// Don't append and write to file
func writeToFile(path string, content string) {
	err := os.WriteFile(path, []byte(content), 0644)
	if err != nil {
		log.Fatalln(err)
	}
}
