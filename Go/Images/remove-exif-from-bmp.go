package main

import (
	//"image"
	//"log"
	//"os"
	"fmt"
	//"golang.org/x/image/bmp"
)

func main() {
	// Remove all the exif data from a bmp file.
	// removeEXIFDataFromBMPImage("../assets/valid/valid-bmp.bmp")
	fmt.Println("Hello World")
}

/*
// Remove all the exif data from a bmp file.
func removeEXIFDataFromBMPImage(path string) {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	img, _, err := image.Decode(file)
	if err != nil {
		log.Fatalln(err)
	}
	outfile, err := os.Create(path)
	if err != nil {
		log.Fatalln(err)
	}
	err = bmp.Encode(outfile, img)
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	err = outfile.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
*/
