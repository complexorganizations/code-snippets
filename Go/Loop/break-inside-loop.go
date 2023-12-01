package main

import (
	"fmt"
)

func main() {
	// Declare and initialize a variable counter to 0.
	counter := 0
	for {
		// Increment the counter.
		counter = counter + 1
		// Add break to the loop
		if counter == 5 {
			break
		}
		// Print some data.
		fmt.Println("Counter:", counter)
	}
}
