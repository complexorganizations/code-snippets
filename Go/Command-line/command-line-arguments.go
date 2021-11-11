package main

import (
	"flag"
	"fmt"
	"os"
)

var (
	help bool
)

func init() {
	if len(os.Args) >= 1 {
		tempHelp := flag.Bool("help", false, "print help message")
		flag.Parse()
		help = *tempHelp
	}
}

func main() {
	// Print help message
	if help {
		fmt.Println("Usage: command-line-arguments [options]")
		fmt.Println("Options:")
		flag.PrintDefaults()
		os.Exit(0)
	} else {
		fmt.Println("No help message")
	}
}
