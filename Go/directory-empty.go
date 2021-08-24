package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	returnValue, err := isDirEmpty("/")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(returnValue)
}

func isDirEmpty(filePath string) (bool, error) {
	files, err := os.ReadDir(filePath)
	if err != nil {
		return false, err
	}
	return len(files) == 0, nil
}
