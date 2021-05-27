package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	fmt.Println(fileSize("examplefile"))
}

func fileSize(filepath string) int64 {
	file, err := os.Stat(filepath)
	if err != nil {
		log.Print(err)
	}
	return file.Size()
}
