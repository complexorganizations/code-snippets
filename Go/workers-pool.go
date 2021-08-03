package main

import (
	"fmt"
	"sync"
)

var wg sync.WaitGroup

func main() {
	for loop := 0; loop <= 1000; loop++ {
		wg.Add(1)
		go testFunc()
	}
	wg.Wait()
}

func testFunc() {
	fmt.Println("Done")
	wg.Done()
}
