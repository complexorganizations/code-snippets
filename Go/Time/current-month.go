package main

import (
	"fmt"
	"time"
)

func main() {
	// Get the current month as string
	fmt.Println(currentMonthAsString())
	// Get the current month as number
	fmt.Println(currentMonthAsNumber())
}

// Get the current month as string
func currentMonthAsString() time.Month {
	return time.Now().Month()
}

// Get the current month as number
func currentMonthAsNumber() int {
	return int(time.Now().Month())
}
