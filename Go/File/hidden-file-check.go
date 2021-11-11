package main

import (
	"fmt"
	"syscall"
	"strings"
)

func main() {
	// Check if the file is hidden using file extension prefix
	fmt.Println(hiddenFileUsingExtension("foo.txt"))
	// Check if the file is hidden using windows API
	fmt.Println(hiddenWindowsFile("foo.txt"))
}

// Check if the file is hidden using file extension prefix
func hiddenFileUsingExtension(path string) bool {
	return strings.HasPrefix(path, ".")
}

// Check if the file is hidden using windows API
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