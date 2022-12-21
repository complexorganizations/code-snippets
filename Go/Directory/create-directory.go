package main

import (
	"log"
	"os"
)

func main() {
	// Create a directory.
	createDirectory("assets/remove/K44CyS7xqVt5e2V5GKCo54c9a5Y9xGxW", 0400)
}

/* The function takes two parameters: path and permission.
We use os.Mkdir() to create the directory.
If there is an error, we use log.Fatalln() to log the error and then exit the program. */
func createDirectory(path string, permission os.FileMode) {
	err := os.Mkdir(path, permission)
	if err != nil {
		log.Fatalln(err)
	}
}
