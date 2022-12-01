package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current system time.
	fmt.Println(getCurrentSystemTime())
}

// Get the current time in the local system and return it.
func getCurrentSystemTime() time.Time {
	return time.Now()
}
