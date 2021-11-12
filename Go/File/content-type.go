package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	// Get the content type of a file
	fmt.Println(getContentType("foo.txt"))
}

// Get the content type of a file and return it as a string
func getContentType(path string) string {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	buffer := make([]byte, 512)
	_, err = file.Read(buffer)
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return http.DetectContentType(buffer)
}
