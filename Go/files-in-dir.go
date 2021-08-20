package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	numberOfFiles, err := filesInDirectory("/")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(numberOfFiles)
}

func filesInDirectory(filePath string) (int, error) {
	files, err := os.ReadDir(filePath)
	if err != nil {
		return 0, err
	}
	return len(files), err
}
