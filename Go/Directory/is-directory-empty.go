package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Check if the directory is empty
	fmt.Println(isDirectoryEmpty("/"))
}

// Check if the given directory is empty
func isDirectoryEmpty(path string) bool {
	files, err := os.ReadDir(path)
	if err != nil {
		log.Fatalln(err)
	}
	return len(files) == 0
}
