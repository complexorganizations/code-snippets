package main

import (
	"fmt"
)

func main() {
	// Loop ten times
	loopTenTimes()
	// Loop one hundred times
	loopOneHundredTimes()
	// loop though a list of strings
	loopThoughListOfStrings()
	// loop though a map of strings
	loopThoughMapOfStrings()
	// loop forever
	loopForever()
	// break example
	breakExample()
	// continue example
	continueExample()
}

// Loop ten times
func loopTenTimes() {
	for loop := 0; loop < 10; loop++ {
		fmt.Println("This is a loop, and it will go around 10 times")
	}
}

// Loop one hundred times
func loopOneHundredTimes() {
	for loop := 0; loop < 100; loop++ {
		fmt.Println("This is a loop, and it will go around 100 times")
	}
}

// Loop though a list of strings
func loopThoughListOfStrings() {
	names := []string{
		"John",
		"Paul",
		"George",
		"Ringo",
	}
	for index, name := range names {
		fmt.Println(index, name)
	}
}

// Loop though a map of strings
func loopThoughMapOfStrings() {
	names := map[string]string{
		"John":   "John Lennon",
		"Paul":   "Paul McCartney",
		"George": "George Harrison",
		"Ringo":  "Ringo Starr",
	}
	for key, value := range names {
		fmt.Println(key, value)
	}
}

// Loop forever
func loopForever() {
	counter := 0
	for {
		counter = counter + 1
		if counter == 10 {
			break
		}
		fmt.Println("This is a loop and it will go on forever")
	}
}

// An example of a break inside a loop
func breakExample() {
	for loop := 0; loop < 10; loop++ {
		break
		fmt.Println("This is a loop and it will go on forever")
	}
}

// An example of a continue inside a loop
func continueExample() {
	for loop := 0; loop < 10; loop++ {
		continue
		fmt.Println("This is a loop and it will go on forever")
	}
}
