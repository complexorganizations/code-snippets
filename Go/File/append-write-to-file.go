package main

import (
	"log"
	"os"
)

func main() {
	// Append and write to file
	appendAndWriteToFile("foo.txt", "Hello World")
}

// Append and write to file
func appendAndWriteToFile(pathInSystem string, content string) {
	filePath, err := os.OpenFile(pathInSystem, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatalln(err)
	}
	_, err = filePath.WriteString(content + "\n")
	if err != nil {
		log.Fatalln(err)
	}
	err = filePath.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
