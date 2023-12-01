package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func main() {
	// Get the current working directory on where the executable is running
	fmt.Println(getCurrentWorkingDirectory())
}

// Get the current working directory on where the executable is running
func getCurrentWorkingDirectory() string {
	currentFileName, err := os.Executable()
	if err != nil {
		log.Fatalln(err)
	}
	return filepath.Dir(currentFileName)
}
