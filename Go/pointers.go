package main

import (
	"fmt"
)

func main() {
	// Create a new int
	valueOne := 1
	valueTwo := 2
	valueThree := 3
	valueFour := 4
	valueFive := 5
	// Create a pointer to the int
	pointerOne := &valueOne
	pointerTwo := &valueTwo
	pointerThree := &valueThree
	pointerFour := &valueFour
	pointerFive := &valueFive
	// Print the pointer
	fmt.Println("pointerOne memory location", pointerOne)
	fmt.Println("pointerTwo memory location", pointerTwo)
	fmt.Println("pointerThree memory location", pointerThree)
	fmt.Println("pointerFour memory location", pointerFour)
	fmt.Println("pointerFive memory location", pointerFive)
	// Print the value of the pointer
	fmt.Println("Value of pointerOne:", *pointerOne)
	fmt.Println("Value of pointerTwo:", *pointerTwo)
	fmt.Println("Value of pointerThree:", *pointerThree)
	fmt.Println("Value of pointerFour:", *pointerFour)
	fmt.Println("Value of pointerFive:", *pointerFive)
}
