package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	fileSize, err := fileSize("/")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(fileSize)
}

func fileSize(filepath string) (int64, error) {
	file, err := os.Stat(filepath)
	if err != nil {
		return 0, err
	}
	return file.Size(), nil
}
