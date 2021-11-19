package main

import (
	"log"
	"os"
)

func main() {
	removeDirectory("assets/ignore/random-directory")
}

// Remove a directory and all its contents.
func removeDirectory(dir string) {
	err := os.RemoveAll(dir)
	if err != nil {
		log.Fatalln(err)
	}
}
