package main

import "fmt"

func main() {
	// Making a channel of value type string
	startChannel := make(chan string)
	// Starting a concurrent goroutine
	go greet(startChannel)
	// Sending values to the channel c
	startChannel <- "World"
	// Closing channel
	close(startChannel)
}

// Prints a greeting message using values received in the channel
func greet(scopeChannel chan string) {
	name := <-scopeChannel     // receiving value from channel
	fmt.Println("Hello", name) // Printing it.
}
