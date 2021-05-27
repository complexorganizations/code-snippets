package main

import (
	"fmt"
	"os"
)

func main() {
	if folderExists("folderName") {
		fmt.Println("There is a folder here.")
	}
}

func folderExists(foldername string) bool {
	info, err := os.Stat(foldername)
	if os.IsNotExist(err) {
		return false
	}
	return info.IsDir()
}
