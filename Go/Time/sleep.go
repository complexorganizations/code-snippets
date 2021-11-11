package main

import (
	"fmt"
	"time"
)

func main() {
	// Before sleep.
	fmt.Println("Hello, World!")
	// Sleep for 30 seconds.
	sleepApplication(30 * time.Second)
	// After sleep.
	fmt.Println("Goodbye, World!")
}

// Sleep for a given ammount of seconds.
func sleepApplication(duration time.Duration) {
	time.Sleep(duration)
}
