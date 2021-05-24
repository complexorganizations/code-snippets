package main

import (
	"log"
	"os"
)

func main() {
	filePath, err := os.OpenFile("file-name", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Println(err)
	}
	defer filePath.Close()
	_, err = filePath.WriteString("text to append")
	if err != nil {
		log.Println(err)
	}
}
