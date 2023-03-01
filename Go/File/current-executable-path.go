package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Print the path to the current executable.
	fmt.Println(currentExecutablePath())
}

// Get the current path to the executable.
func currentExecutablePath() string {
	currentExecutable, err := os.Executable()
	if err != nil {
		log.Fatalln(err)
	}
	return currentExecutable
}
