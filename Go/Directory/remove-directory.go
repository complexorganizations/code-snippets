package main

import (
	"log"
	"os"
)

func main() {
	removeDirectory("Directory/")
}

// Remove a directory and all its contents.
func removeDirectory(dir string) {
	err := os.RemoveAll(dir)
	if err != nil {
		log.Println(err)
	}
}
