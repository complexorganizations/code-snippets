package main

import "fmt"

type person struct {
	name string
	age  int
}

func (p person) print() {
	fmt.Printf("%s is of %d years \n", p.name, p.age)
}

func main() {
	john := person{
		name: "John",
		age:  18,
	}
	john.print()
}
