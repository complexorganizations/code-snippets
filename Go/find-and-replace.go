package main

import (
	"log"
	"os"
	"strings"
)

var (
	oldString string
	newString string
	filePath  string
)

func main() {
	content, err := readAFile(filePath)
	if err != nil {
		log.Fatal(err)
	}
	newContents := strings.Replace(string(content), (oldString), (newString), -1)
	err = writeContnetToFile([]byte(filePath), newContents)
	if err != nil {
		log.Fatal(err)
	}
}

// Don't append and write to file
func writeContnetToFile(filepath []byte, content string) error {
	err := os.WriteFile(content, filepath, 0644)
	if err != nil {
		return err
	}
	return nil
}

// Check if a file exists
func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if err != nil {
		return false
	}
	return !info.IsDir()
}

// Read a file and return the contents
func readAFile(path string) ([]byte, error) {
	content, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	return content, nil
}
