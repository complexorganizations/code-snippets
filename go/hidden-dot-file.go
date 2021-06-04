package main

import (
	"fmt"
)

func main() {
	if hiddenFile("file_name") {
		fmt.Println("This is a hidden file")
	}
}

// Hidden files [.files]
func hiddenFile(filename string) bool {
	return filename[0:1] == "."
}
