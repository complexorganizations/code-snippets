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
		fmt.Println(index, name)
	}
	// loop forever
	for {
		fmt.Println("This is a loop and it will go on forever")
	}
}
