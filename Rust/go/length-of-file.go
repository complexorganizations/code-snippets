package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println(fileLength("test"))
}

// get the length of a file
func fileLength(fileName string) int {
	content, _ := os.ReadFile(fileName)
	return len(content)
}
