package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println(isDirEmpty("test/"))
}

func isDirEmpty(filePath string) bool {
	files, _ := os.ReadDir(filePath)
	return len(files) == 0
}
