package main

import (
	"fmt"
	"time"
)

func main() {
	// Print the current time in milliseconds
	fmt.Println(currentMillisecond())
}

// Get the current time in milliseconds
func currentMillisecond() int64 {
	return time.Now().UnixMilli()
}
