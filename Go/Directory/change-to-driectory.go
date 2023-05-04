package main

import (
	"log"
	"os"
)

func main() {
	changeToDirectory("/")
}

// Change to a given directory.
func changeToDirectory(path string) {
	err := os.Chdir(path)
	if err != nil {
		log.Fatalln(err)
	}
}
