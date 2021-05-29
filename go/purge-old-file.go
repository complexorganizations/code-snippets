package main

import (
	"log"
	"os"
	"time"
)

func main() {
	purgeOldFiles("/home/username/project", 1)
}

func purgeOldFiles(directory string, hour time.Duration) {
	fileInfo, err := os.ReadDir(directory)
	if err != nil {
		log.Fatal(err)
	}
	cutOff := hour * time.Hour
	currentTime := time.Now()
	for _, info := range fileInfo {
		diffTime := currentTime.Sub(info.ModTime())
		if diffTime > cutOff {
			os.Remove(info.Name())
		}
	}
}
