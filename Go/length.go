package main

import (
	"fmt"
	"os"
)

func main() {
	// get the length of the file
	fmt.Println(fileLength("main.go"))
	// Get the length of a string
	fmt.Println(stringLength("Random String Here."))
}

// get the length of a file
func fileLength(fileName string) int {
	content, _ := os.ReadFile(fileName)
	return len(content)
}

// get the length of a string
func stringLength(str string) int {
	return len(str)
}
