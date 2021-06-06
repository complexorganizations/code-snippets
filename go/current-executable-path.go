package main

import (
	"fmt"
	"os"
	"path/filepath"
)

func main() {
	currentExecutable, err := os.Executable()
	if err != nil {
		panic(err)
	}
	currentExecutablePath := filepath.Dir(currentExecutable)
	fmt.Println("Executable", currentExecutable)    // Executable /tmpfs/play
	fmt.Println("Directory", currentExecutablePath) // Directory /tmpfs
}
