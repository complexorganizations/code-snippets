package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current nanoseconds.
	fmt.Println(getCurrentNanoseconds())
}

// Get the current nanoseconds and return it.
func getCurrentNanoseconds() int {
	return time.Now().Nanosecond()
}