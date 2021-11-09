package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current time in a certain format.
	fmt.Println(currentTimeInFormat("2006-01-02 15:04:05"))
}

// Get the current time in a certain format.
func currentTimeInFormat(format string) string {
	return time.Now().Format(format)
}