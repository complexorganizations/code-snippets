package main

import (
	"fmt"
	"os"
)

func main() {
	// Check if a directory exists
	fmt.Println(directoryExists("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/"))
}

// Check if a directory exists
func directoryExists(path string) bool {
	directory, err := os.Stat(path)
	if err != nil {
		return false
	}
	return directory.IsDir()
}
