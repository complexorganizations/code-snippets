package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current year in the system.
	fmt.Println(getCurrentYearInSystem())
}

// Get the current year in the system.
func getCurrentYearInSystem() int {
	return time.Now().Year()
}
