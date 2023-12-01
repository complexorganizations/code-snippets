package main

import (
	"bufio"
	"log"
	"os"
)

func main() {
	// Create a byte array.
	data := []byte("Hello, World!")
	// Write byte slice to file.
	writeByteSliceToFile("assets/remove/42N3AYpKHqiKvq5hMx3Y969k3XZA28V3", data)
}

// Write byte slice to file.
func writeByteSliceToFile(path string, data []byte) {
	file, err := os.Create(path)
	if err != nil {
		log.Fatalln(err)
	}
	writer := bufio.NewWriter(file)
	writer.Write(data)
	err = writer.Flush()
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
