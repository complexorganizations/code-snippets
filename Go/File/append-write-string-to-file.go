package main

import (
	"log"
	"os"
)

func main() {
	// Append and write to file
	appendAndWriteToFile("assets/remove/AV6rn72g2J7F3vbHKhP3F56Tz6rRV4L8", "Hello World")
}

// Append and write to file
func appendAndWriteToFile(path string, content string) {
	filePath, err := os.OpenFile(path, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
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
