package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current microsecond.
	fmt.Println(getCurrentMicrosecond())
}

// Get the current microseconds.
func getCurrentMicrosecond() int64 {
	return time.Now().UnixMicro()
}