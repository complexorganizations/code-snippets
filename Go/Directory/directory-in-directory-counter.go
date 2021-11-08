package main

import (
	"fmt"
	"os"
)

func main() {
	// Count the directories in the given directory
	fmt.Println(countDirectoryInDirectory("/"))
}

// Get the ammount of directories in a directory
func countDirectoryInDirectory(path string) int {
	counter := 0
	directories, err := os.ReadDir(path)
	if err != nil {
		return -1
	}
	for _, directory := range directories {
		if directory.IsDir() {
			counter = counter + 1
		}
	}
	return counter
}
