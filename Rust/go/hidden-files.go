package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
	"runtime"
	"syscall"
)

var (
	systemPath = "/"
	err        error
)

func main() {
	findAllFiles()
}

func findAllFiles() {
	// Find all the files in the system.
	err = filepath.Walk(systemPath, func(path string, info os.FileInfo, err error) error {
		if fileExists(path) {
			if runtime.GOOS == "windows" {
				if hiddenWindowsFile(path) {
					fmt.Println(path)
				}
			}
			if hiddenFile(path) {
				fmt.Println(path)
			}
		}
		return nil
	})
	handleErrors(err)
}

// check if a file exists
func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if err != nil {
		return false
	}
	return !info.IsDir()
}

// Handle errors
func handleErrors(err error) {
	if err != nil {
		log.Println(err)
	}
}

// Hidden files [.files]
func hiddenFile(filename string) bool {
	return filename[0:1] == "."
}

// Hidden files in windows
func hiddenWindowsFile(filename string) bool {
	pointer, err := syscall.UTF16PtrFromString(filename)
	if err != nil {
		return false
	}
	attributes, err := syscall.GetFileAttributes(pointer)
	if err != nil {
		return false
	}
	return attributes&syscall.FILE_ATTRIBUTE_HIDDEN != 0
}
