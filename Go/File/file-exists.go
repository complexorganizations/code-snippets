package main

import (
	"fmt"
	"os"
)

func main() {
	// Check if the file exists.
	fmt.Println(fileExists("assets/valid/valid-txt.txt"))
}

/* It checks if the file exists
If the file exists, it returns true
If the file does not exist, it returns false */
func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if err != nil {
		return false
	}
	return !info.IsDir()
}
