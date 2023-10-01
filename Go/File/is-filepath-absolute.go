package main

import (
	"fmt"
	"path/filepath"
)

func main() {
	// Check if a given filepath is absolute.
	fmt.Println(isFilepathAbsolute("/assets/valid/valid.txt"))
}

// Check if a given filepath is absolute.
func isFilepathAbsolute(givenPath string) bool {
	return filepath.IsAbs(givenPath)
}
