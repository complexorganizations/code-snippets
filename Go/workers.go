package main

import (
	"fmt"
	"sync"
)

var (
	waitGroup sync.WaitGroup
)

func main() {
	for loop := 0; loop <= 1000; loop++ {
		waitGroup.Add(1)
		go secondFunction()
	}
	waitGroup.Wait()
}

func secondFunction() {
	fmt.Println("Done")
	waitGroup.Done()
}
