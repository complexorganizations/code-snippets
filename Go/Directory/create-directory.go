package main

import (
	"log"
	"os"
)

func main() {
	// Create a directory.
	createDirectory("assets/remove/K44CyS7xqVt5e2V5GKCo54c9a5Y9xGxW", 0400)
}

// Create a director.
func createDirectory(path string, permission os.FileMode) {
	err := os.Mkdir(path, permission)
	if err != nil {
		log.Fatalln(err)
	}
}
