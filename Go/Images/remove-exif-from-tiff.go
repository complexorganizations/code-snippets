package main

import (
	"fmt"
	//"image"
	//"log"
	//"os"
	//"golang.org/x/image/tiff"
)

func main() {
	// Remove all the exif data from tiff file.
	// removeEXIFDataFromTIFFImage("assets/valid/valid-tiff.tiff")
	fmt.Println("Hello World")
}

/*
// Remove all the EXIF data from a tiff file
func removeEXIFDataFromTIFFImage(path string) {
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
	err = tiff.Encode(outfile, img, nil)
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
