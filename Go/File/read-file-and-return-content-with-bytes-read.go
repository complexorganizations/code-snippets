package main

import (
	"fmt"
	"io"
	"log"
	"os"
)

func main() {
	// Read a file and return the content and the ammount of bytes read.
	fmt.Println(readFileAndReturnContentWithBytesRead("assets/valid/valid-json.json"))
}

// Read a file and then return the file's content as well as the number of bytes read.
func readFileAndReturnContentWithBytesRead(path string) ([]byte, int) {
	var counter int
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	content, err := io.ReadAll(file)
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	for _ = range content {
		counter = counter + 1
	}
	return content, counter
}
