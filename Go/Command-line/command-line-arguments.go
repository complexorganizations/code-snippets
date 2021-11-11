package main

import (
	"fmt"
	//"os"
)

func main() {
	// os.Args provides access to raw command-line arguments.
	// Note that the first value in this slice is the path to the program, and os.Args[1:] holds the arguments to the program.
	fmt.Println("Hello, World!")
}
