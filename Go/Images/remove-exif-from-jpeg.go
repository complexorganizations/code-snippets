package main

import (
	"image"
	"image/jpeg"
	"log"
	"os"
)

func main() {
	// Remove EXIF Data from JPEG file.
	removeEXIFDataFromJPEGFile("assets/valid/valid-jpg.jpg")
}

// Remove EXIF Data from JPEG file.
func removeEXIFDataFromJPEGFile(path string) {
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
	err = jpeg.Encode(outfile, img, nil)
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
