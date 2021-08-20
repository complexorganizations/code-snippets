package main

import "fmt"

func main() {
	// Making a channel of value type string
	c := make(chan string)
	// Starting a concurrent goroutine
	go greet(c)
	// Sending values to the channel c
	c <- "World"
	// Closing channel
	close(c)
}

// Prints a greeting message using values received in the channel
func greet(c chan string) {
	name := <-c                // receiving value from channel
	fmt.Println("Hello", name) // Printing it.
}
