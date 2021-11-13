package main

import (
	"log"
	"os"
)

func main() {
	// Create a directory.
	createDirectory("temp-dir/", 0400)
}

// Create a director.
func createDirectory(path string, permission os.FileMode) {
	err := os.Mkdir(path, permission)
	if err != nil {
		log.Fatalln(err)
	}
}
