package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println(getCurrentArch())
}

func getCurrentArch() string {
	return runtime.GOARCH
}
