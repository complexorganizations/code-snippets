package main

import (
	"crypto/sha512"
	"flag"
	//"fmt"
	"io"
	"log"
	//"io/ioutil"
	"os"
	"path/filepath"
)

var (
	watchSystemPath string
	logSystemPath   string
)

func init() {
	if len(os.Args) > 1 {
		tempWatchSystemPath := flag.String("watch", "/user/example/folder/file", "The system path to keep an eye on")
		tempLogSystemPath := flag.String("log", "/log/file-watcher.log", "The logs system route")
		flag.Parse()
		watchSystemPath = *tempWatchSystemPath
		logSystemPath = *tempLogSystemPath
	} else {
		os.Exit(0)
	}
	if len(watchSystemPath) < 1 || watchSystemPath == "/user/example/folder/file" {
		log.Fatal("Error: The system path has not been given.")
	}
	if len(logSystemPath) > 1 {
		//
	}
}

func main() {
	if fileExists(watchSystemPath) {
		generateSHA512(watchSystemPath)
	} else if folderExists(watchSystemPath) {
		SHA512everything()
	} else {
		log.Fatal("Error: The machine direction is invalid.")
	}
}

func generateSHA512(filePath string) {
	file, err := os.Open(filePath)
	handleErrors(err)
	defer file.Close()
	hash := sha512.New()
	io.Copy(hash, file)
	handleErrors(err)
	writeToFile(logSystemPath, hash.Sum(nil))
}

func SHA512everything() {
	filepath.Walk(watchSystemPath, func(path string, info os.FileInfo, err error) error {
		if fileExists(path) {
			generateSHA512(path)
		}
		return nil
	})
}

func writeToFile(filePath string, fileData []byte) {
	file, err := os.OpenFile(filePath, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatal(err)
	}
	file.Write(fileData)
	file.Close()
}

func folderExists(foldername string) bool {
	info, err := os.Stat(foldername)
	if os.IsNotExist(err) {
		return false
	}
	return info.IsDir()
}

func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if os.IsNotExist(err) {
		return false
	}
	return !info.IsDir()
}

func handleErrors(err error) {
	if err != nil {
		log.Println(err)
	}
}
