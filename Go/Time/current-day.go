package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current day in the year.
	fmt.Println(getCurrentDayInYear())
}

// Get the current day of the year.
func getCurrentDayInYear() int {
	return time.Now().Day()
}
