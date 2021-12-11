package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Read a file and return the content and the ammount of bytes read.
	fmt.Println(readFileAndReturnContentWithBytes("assets/valid/valid-json.json"))
}

// Read a file and than return the content of the file and the ammount of bytes read from file.
func readFileAndReturnContentWithBytes(path string) ([]byte, int) {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	fileinfo, err := file.Stat()
	if err != nil {
		log.Fatalln(err)
	}
	fileContent := make([]byte, fileinfo.Size())
	bytesRead, err := file.Read(fileContent)
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return fileContent, bytesRead
}
