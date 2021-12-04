package main

import (
	"image"
	"image/gif"
	"log"
	"os"
)

func main() {
	// Remove all the exif data from a gif.
	removeEXIFFromGIFFile("assets/valid/valid-gif.gif")
}

// Remove all the EXIF data from an GIF.
func removeEXIFFromGIFFile(path string) {
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
	err = gif.Encode(outfile, img, nil)
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
