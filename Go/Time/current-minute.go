package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current minute of the current hour.
	fmt.Println(getCurrentMinute())
}

// Get the current minute of the current hour.
func getCurrentMinute() int {
	return time.Now().Minute()
}
