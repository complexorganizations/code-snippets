package main

import "fmt"

type personalINFO struct {
	name string
	age  int
}

func (content personalINFO) print() {
	fmt.Printf("%s is of %d years \n", content.name, content.age)
}

func main() {
	localInfo := personalINFO{
		name: "John",
		age:  18,
	}
	localInfo.print()
}
