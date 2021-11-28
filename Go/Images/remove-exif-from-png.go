package main

import (
	"image"
	"image/png"
	"log"
	"os"
)

func main() {
	// Remove all the exif data from an png file.
	removeEXIFDataFromPNGFromFile("assets/valid/valid-png.png")
}

// Remove all the EXIF data from an PNG file
func removeEXIFDataFromPNGFromFile(path string) {
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
	png.Encode(outfile, img)
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	err = outfile.Close()
	if err != nil {
		log.Fatal(err)
	}
}
