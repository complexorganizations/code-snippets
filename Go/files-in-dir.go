package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println(filesInDirectory("test/"))
}

func filesInDirectory(filePath string) int {
	files, _ := os.ReadDir(filePath)
	return len(files)
}
