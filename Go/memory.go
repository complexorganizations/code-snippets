package main

import (
	"runtime/debug"
)

func main() {
	// Free os memory
	debug.FreeOSMemory()
	// Sex the max ammount of threads.
	debug.SetMaxThreads(100)
}