package main

import (
	"fmt"
	"strings"
)

func main() {
	if hiddenFile(".DS_STORE") {
		fmt.Println("This is a hidden file")
	}
}

// Hidden files [.files]
func hiddenFile(filename string) bool {
	return strings.HasPrefix(filename, ".")
}
