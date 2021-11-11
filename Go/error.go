package main

import (
	"log"
	"os"
)

var (
	err error
)

func main() {
	// Handle all errors in a single unified way.
	err = os.RemoveAll("Dart/")
	handleAllErrors(err)
	// Handle errors case by case.
	err = os.RemoveAll("Rust/")
	if err != nil {
		log.Fatalln(err)
	}
}

// Handle all errors in a single unified way.
func handleAllErrors(err error) {
	if err != nil {
		log.Fatalln(err)
	}
}

/* Note:
There are alternative ways to handle errors in Go but they aren't encouraged
since they complicate the code and make it less understandable.
*/
