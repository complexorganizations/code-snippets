package main

import (
	"crypto/sha512"
	"io"
	"log"
	"os"
)

var (
	watchSystemPath = "test"
	logSystemPath   = "logs.log"
)

func main() {
	generateSHA512(watchSystemPath)
}

func generateSHA512(filePath string) {
	file, _ := os.Open(filePath)
	defer file.Close()
	hash := sha512.New()
	io.Copy(hash, file)
	writeToFile(logSystemPath, hash.Sum(nil))
}

func writeToFile(filePath string, fileData []byte) {
	file, err := os.OpenFile(filePath, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatal(err)
	}
	file.Write(fileData)
	file.Close()
}
