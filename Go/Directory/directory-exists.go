package main

import (
	"fmt"
	"os"
)

func main() {
	// Check if a directory exists
	fmt.Println(directoryExists("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/"))
}

/* Checks if the directory exists
If it exists, return true.
If it doesn't, return false. */
func directoryExists(path string) bool {
	directory, err := os.Stat(path)
	if err != nil {
		return false
	}
	return directory.IsDir()
}
