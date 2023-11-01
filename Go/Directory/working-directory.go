package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Get the current working directory.
	fmt.Println(getCurrentDirectory())
}

// Get the current working directory and return it.
func getCurrentDirectory() string {
	currentDirectory, err := os.Getwd()
	if err != nil {
		log.Fatalln(err)
	}
	return currentDirectory
}
