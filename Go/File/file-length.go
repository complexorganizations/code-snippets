package main

import (
	"fmt"
	"os"
)

func main() {
	// Get the length of the file
	fmt.Println(getFileLength("file-length.go"))
}

// Get the length of a file and return it as int
func getFileLength(path string) int {
	content, err := os.ReadFile(path)
	if err != nil {
		return -1
	}
	return len(content)
}
