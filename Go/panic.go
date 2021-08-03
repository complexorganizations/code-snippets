package main

import (
	"os"
)

func main() {
	err := os.Remove("some-file")
	if err != nil {
		panic(err)
	}
}
