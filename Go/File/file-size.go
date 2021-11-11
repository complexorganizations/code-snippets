package main

import (
	"fmt"
	"os"
)

func main() {
	// Get the size of a file.
	fmt.Println(getFileSize("foo.txt"))
}

// Get the size of a given file.
func getFileSize(path string) int64 {
	file, err := os.Stat(path)
	if err != nil {
		return -1
	}
	return file.Size()
}