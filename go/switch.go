package main

import (
	"fmt"
	"log"
	"runtime"
)

func main() {
	switch runtime.GOOS {
	case "windows":
		fmt.Println("This is for windows")
	case "darwin":
		fmt.Println("This is for mac")
	case "linux":
		fmt.Println("This is for linux")
	default:
		log.Fatalf("Error: System %s Not Supported.\n", runtime.GOOS)
	}
}
