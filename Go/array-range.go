package main

import "fmt"

func main() {
	randomList := []string{
		"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
		"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
		"!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "+", "=", "{", "[", "}", "]", ":", ";", "\"", "'", "<", ",", ">", ".", "?", "/",
	}
	for number, list := range randomList {
		fmt.Println(number, ":", list)
		// Number
		if number == 25 {
			fmt.Println("The content of number 25 is", list)
		}
		// Item
		if list == "P" {
			fmt.Println("The letter is", list)
		}
	}
	fmt.Println(randomList)
}
