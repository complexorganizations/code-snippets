package main

import (
	"fmt"
	"time"
)

func main() {
	// Print the current hour.
	fmt.Println(getCurrentHour())
}

// Get the current hour and return it.
func getCurrentHour() int {
	return time.Now().Hour()
}
