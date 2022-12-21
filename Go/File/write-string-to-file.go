package main

import (
	"log"
	"os"
)

func main() {
	// Write to file without appending anything.
	writeToFile("assets/remove/8aDwp8548CYD9UF3ge2C453955tdca92", []byte("Hello World"))
}

/* It takes in a path and content to write to that file.
It uses the os.WriteFile function to write the content to that file.
It checks for errors and logs them. */
func writeToFile(path string, content []byte) {
	err := os.WriteFile(path, content, 0644)
	if err != nil {
		log.Fatalln(err)
	}
}
