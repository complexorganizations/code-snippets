package main

import (
	"log"
	"os"
)

func main() {
	// Append and write the content to a file.
	err := writeToFile("/location/to/save", "The content to write to the file.")
	if err != nil {
		log.Fatal(err)
	}
}

// Append and write to file
func writeToFile(pathInSystem string, content string) error {
	filePath, err := os.OpenFile(pathInSystem, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		return err
	}
	_, err = filePath.WriteString(content + "\n")
	if err != nil {
		return err
	}
	err = filePath.Close()
	if err != nil {
		return err
	}
	return nil
}
