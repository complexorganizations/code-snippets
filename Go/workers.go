package main

import (
	"fmt"
	"sync"
)

var (
	waitGroup sync.WaitGroup
)

func main() {
	// Create a certain numbers of go routine, with waitgroup
	for loop := 0; loop <= 1000; loop++ {
		waitGroup.Add(1)
		go secondFunction()
	}
	waitGroup.Wait()
}

// Complete a certain function and tell waitgroup it's completed.
func secondFunction() {
	fmt.Println("Done")
	waitGroup.Done()
}
