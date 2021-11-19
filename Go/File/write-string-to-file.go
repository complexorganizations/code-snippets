package main

import (
	"log"
	"os"
)

func main() {
	// Write to file without appending anything.
	writeToFile("assets/remove/8aDwp8548CYD9UF3ge2C453955tdca92", []byte("Hello World"))
}

// Don't append and write to file
func writeToFile(path string, content []byte) {
	err := os.WriteFile(path, content, 0644)
	if err != nil {
		log.Fatalln(err)
	}
}
