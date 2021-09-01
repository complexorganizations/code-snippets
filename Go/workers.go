package main

import (
	"fmt"
	"sync"
)

var wg sync.WaitGroup

func main() {
	for loop := 0; loop <= 1000; loop++ {
		wg.Add(1)
		go secondFunction()
	}
	wg.Wait()
}

func secondFunction() {
	fmt.Println("Done")
	wg.Done()
}
