package main

import (
	"log"
	"os"
)

func main() {
	// Create a directory.
	createDirectory("Directory/")
}

// Create a director.
func createDirectory(path string) {
	err := os.Mkdir(path, os.ModePerm)
	if err != nil {
		log.Fatalln(err)
	}
}
