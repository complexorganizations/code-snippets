package main

import "fmt"

type personalINFO struct {
	name   string
	age    int
	weight float32
}

func (content personalINFO) print() {
	fmt.Printf("%s is of %d years \n", content.name, content.age)
}

func main() {
	localInfo := personalINFO{
		name:   "John Doe",
		age:    18,
		weight: 80.6,
	}
	localInfo.print()
}
