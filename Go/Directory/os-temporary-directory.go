package main

import (
	"fmt"
	"os"
)

func main() {
	// Get the temporary directory for the operating system.
	fmt.Println(operatingSystemTemporaryDirectory())
}

// Get the temporary directory for the operating system.
func operatingSystemTemporaryDirectory() string {
	return os.TempDir()
}
