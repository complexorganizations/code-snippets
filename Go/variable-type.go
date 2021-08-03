package main

import (
	"fmt"
	"reflect"
)

func main() {
	tst1 := "string"
	tst2 := 10
	tst3 := 1.2
	tst4 := true
	tst5 := []string{"foo", "bar", "baz"}
	tst6 := map[string]int{"apple": 23, "tomato": 13}

	fmt.Printf("\n")
	fmt.Println(reflect.TypeOf(tst1))
	fmt.Println(reflect.TypeOf(tst2))
	fmt.Println(reflect.TypeOf(tst3))
	fmt.Println(reflect.TypeOf(tst4))
	fmt.Println(reflect.TypeOf(tst5))
	fmt.Println(reflect.TypeOf(tst6))

	fmt.Printf("\n")
	fmt.Println(reflect.ValueOf(tst1).Kind())
	fmt.Println(reflect.ValueOf(tst2).Kind())
	fmt.Println(reflect.ValueOf(tst3).Kind())
	fmt.Println(reflect.ValueOf(tst4).Kind())
	fmt.Println(reflect.ValueOf(tst5).Kind())
	fmt.Println(reflect.ValueOf(tst6).Kind())

	fmt.Printf("\n")
	fmt.Printf("%T\n", tst1)
	fmt.Printf("%T\n", tst2)
	fmt.Printf("%T\n", tst3)
	fmt.Printf("%T\n", tst4)
	fmt.Printf("%T\n", tst5)
	fmt.Printf("%T\n", tst6)
}
