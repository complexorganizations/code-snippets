package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	systemHostname, err := os.Hostname()
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(systemHostname)
}
