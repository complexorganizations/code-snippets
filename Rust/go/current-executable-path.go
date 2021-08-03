package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func main() {
	currentExecutable, err := os.Executable()
	currentExecutablePath := filepath.Dir(currentExecutable)
	if err != nil {
		log.Println(err)
	}
	fmt.Println("Executable", currentExecutable)    // Executable /tmpfs/play
	fmt.Println("Directory", currentExecutablePath) // Directory /tmpfs
}
