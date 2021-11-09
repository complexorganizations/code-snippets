package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current second.
	fmt.Println(getCurrentSecond())
}

// Get the current second and return it.
func getCurrentSecond() int {
	return time.Now().Second()
}