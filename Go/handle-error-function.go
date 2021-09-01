package main

import "os"

func main() {
	err := os.Remove("example")
	handleError(err)
}

func handleError(err error) {
	if err != nil {
		panic(err)
	}
}
