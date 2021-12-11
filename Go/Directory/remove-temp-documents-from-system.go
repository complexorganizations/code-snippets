package main

import (
	"log"
	"os"
)

func main() {
	// Remove all the temp files from the system.
	removeTempFilesFromSystem()
}

// Remove all temporary files from a system.
func removeTempFilesFromSystem() {
	err := os.RemoveAll(os.TempDir())
	if err != nil {
		log.Fatalln(err)
	}
}
