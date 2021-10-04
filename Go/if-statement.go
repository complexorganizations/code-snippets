package main

import "fmt"

func main() {
	// Simple if statement
	simpleIfStatement()
	// Simple if else statement
	simpleIfElseStatement()
	// Simple if else if statement
	simpleIfElseIfStatement()
	// Simple if else if else statement
	simpleIfElseIfElseStatement()
}

// simple if statement
func simpleIfStatement() {
	if 1 == 1 {
		fmt.Println("1 == 1")
	}
}

// Simple if else statement
func simpleIfElseStatement() {
	if 1 == 1 {
		fmt.Println("1 == 1")
	} else {
		fmt.Println("1 != 1")
	}
}

// Simple if else if statement
func simpleIfElseIfStatement() {
	if 1 == 1 {
		fmt.Println("1 == 1")
	} else if 1 == 2 {
		fmt.Println("1 == 2")
	}
}

// Simple if else if else statement
func simpleIfElseIfElseStatement() {
	if 1 == 1 {
		fmt.Println("1 == 1")
	} else if 1 == 2 {
		fmt.Println("1 == 2")
	} else {
		fmt.Println("1 != 1 and 1 != 2")
	}
}
