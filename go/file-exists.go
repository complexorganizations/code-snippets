package main

import (
	"fmt"
	"os"
)

func main() {
	if fileExists("fileName") {
		fmt.Println("There is a file here.")
	}
}

func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if os.IsNotExist(err) {
		return false
	}
	return !info.IsDir()
}
