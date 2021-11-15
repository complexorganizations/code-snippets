package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func main() {
	// Walk a given path
	filesList := walkAndAppendPath("/")
	for _, files := range filesList {
		fmt.Println(files)
	}
}

// Walk through a route, find all the files and attach them to a slice.
func walkAndAppendPath(walkPath string) []string {
	var filePath []string
	err := filepath.Walk(walkPath, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			log.Fatalln(err)
		}
		if fileExists(path) {
			filePath = append(filePath, path)
		}
		log.Fatalln(err)
	})
	if err != nil {
		log.Fatalln(err)
	}
	return filePath
}

// Check if the file exists and return a bool.
func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if err != nil {
		return false
	}
	return !info.IsDir()
}
