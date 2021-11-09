package main

import (
	"fmt"
	"os"
)

func main() {
	// Check if the file exists.
	fmt.Println(fileExists("file-exists.go"))
}

// Check if the file exists and return a bool.
func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if err != nil {
		return false
	}
	return !info.IsDir()
}
