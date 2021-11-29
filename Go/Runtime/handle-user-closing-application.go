package main

import (
	"fmt"
	"os"
	"os/signal"
	"syscall"
	"time"
)

func init() {
	channel := make(chan os.Signal, 1)
	signal.Notify(channel, os.Interrupt, syscall.SIGTERM)
	go func() {
		value := <-channel
		fmt.Println("The user pressed Ctrl+C, exiting...", value)
		os.Exit(0)
	}()
}

func main() {
	var counter int
	for {
		counter = counter + 1
		fmt.Println(counter)
		time.Sleep(time.Second)
		if counter == 5 {
			break
		}
	}
}
