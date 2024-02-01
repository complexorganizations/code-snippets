package main

import (
	"fmt"
	"os"
)

func main() {
	// Get the temporary directory for the operating system.
	fmt.Println(operatingSystemTemporaryDirectory())
}

/* It imports the os package
It defines a function operatingSystemTemporaryDirectory that returns a string
It returns the result of os.TempDir() */
func operatingSystemTemporaryDirectory() string {
	return os.TempDir()
}
