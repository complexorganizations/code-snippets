package main

import (
	"fmt"
	"os"
)

func main() {
	// Check if a directory exists
	fmt.Println(directoryExists("assets/ignore/"))
}

// Check if a directory exists
func directoryExists(path string) bool {
	directory, err := os.Stat(path)
	if err != nil {
		return false
	}
	return directory.IsDir()
}
