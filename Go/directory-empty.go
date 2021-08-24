package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println(isDirEmpty("test/"))
}

func isDirEmpty(filePath string) (bool, error) {
	files, err := os.ReadDir(filePath)
	if err != nil {
		return false, err
	}
	return len(files) == 0, nil
}
