package main

import (
	"fmt"
	"os"
)

func main() {
	// Get the value of an environment variable.
	fmt.Println(getEnviromentVariable("GOPATH"))
}

// Get the value of an environment variable.
func getEnviromentVariable(key string) string {
	return os.Getenv(key)
}
