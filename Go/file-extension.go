package main

import (
	"fmt"
	"path/filepath"
)

func main() {
	fileExtension := filepath.Ext("/random/file/here.json")
	fmt.Println(fileExtension)
}
