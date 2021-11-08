package main

import (
	"os"
	"log"
)

func main() {
	// Create a directory.
	createDirectory("Directory/")
}

// Create a director.
func createDirectory(path string) {
	err := os.Mkdir(path, os.ModePerm)
	if err != nil {
		log.Fatal(err)
	}
}