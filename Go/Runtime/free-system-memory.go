package main

import (
	"fmt"
	"runtime/debug"
)

func main() {
	// Freeup system memory manually
	freeSystemMemory()
}

// Freeup system memory manually
func freeSystemMemory() {
	debug.FreeOSMemory()
}