package main

import (
	"fmt"
)

func main() {
	// loop 10 times
	for loop := 0; loop < 10; loop++ {
		fmt.Println("This is a loop, and it will go around 10 times")
	}
	// loop 5 times
	for loop := 0; loop < 5; loop++ {
		fmt.Println("This is a loop, and it will go around 5 times")
	}
	// loop though a list of strings
	names := []string{
		"John",
		"Paul",
		"George",
		"Ringo",
	}
	for index, name := range names {
		// index is the fist value and it will give u the number of the item.
		fmt.Println(index)
		// name is the actual value of the item.
		fmt.Println(name)
	}
	// loop forever
	for {
		fmt.Println("This is a loop and it will go on forever")
	}
}
