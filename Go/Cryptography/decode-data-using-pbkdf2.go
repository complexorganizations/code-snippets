package main

import (
	// "crypto/sha512"
	// "crypto/subtle"
	// "encoding/hex"
	"fmt"
	// "strconv"
	// "strings"
	// "golang.org/x/crypto/pbkdf2"
)

func main() {
	// Decode data using pbkdf2.
	// fmt.Println(decodeDataUsingPbkdf2("random-test-password", "ce723f2498f99bf2b15afbedb344e9e99b98af1563a3cd1e002d6f70c670039897b87aa38c0f2308b505deb15bbaced76264512bcdcfd5ac186ce3dbe0597221,63b12a2966b92e97386d23071124dfe9532d15f3fb675db446d84740eb31386af1a5ae5107ad0b0897ec2fdcafbf20c3bf364de6d6cb169e70d8bfed302bbb04e2c730046801ef18519e25c466a1fdaebe94d60e9581cacec2fd20d72781767ed8f2e3a2491a43373a00b493fd67a41367460a8a0278cb27b7d8aa885d9768b3,1048576"))
	fmt.Println("Hello, World!")
}

/*
// Decode data using pbkdf2.
func decodeDataUsingPbkdf2(password string, hash string) bool {
	parts := strings.Split(hash, ",")
	originalHash, err := hex.DecodeString(parts[0])
	if err != nil {
		return false
	}
	salt, err := hex.DecodeString(parts[1])
	if err != nil {
		return false
	}
	iterations, err := strconv.ParseInt(parts[2], 10, 32)
	if err != nil {
		return false
	}
	return subtle.ConstantTimeCompare(originalHash, pbkdf2.Key([]byte(password), salt, int(iterations), len(originalHash), sha512.New)) == 1
}
*/
