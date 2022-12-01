package main

import (
	"fmt"
	"net/mail"
)

func main() {
	// Check if a email address is valid.
	fmt.Println(isEmailAddressValid("example@example.com"))
}

// Check if a given email address is valid.
func isEmailAddressValid(emailAddress string) bool {
	_, err := mail.ParseAddress(emailAddress)
	return err != nil
}
