package main

import (
	"fmt"
)

func main() {
	// Initialize the loop counter
	counter := 0
	for {
		// Print the current counter value
		fmt.Println(counter)
		// Increment the counter
		counter = counter + 1
		if counter == 10 {
			break
			// Since we dont want to loop forever, we break out of the loop
			// If the counter statement and the break statement is removed it will go forever.
		}
	}
}
