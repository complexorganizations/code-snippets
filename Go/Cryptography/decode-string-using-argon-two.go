package main

import (
	//"crypto/subtle"
	//"encoding/hex"
	"fmt"
	//"strconv"
	//"strings"

	//"golang.org/x/crypto/argon2"
)

func main() {
	// Decrypt the hash using argon2
	// validCheck := compareHashUsingArgonTwo([]byte("WHV02Qkhv7JhD8g4YFt8"), "65536,60,4,87c26d7fb3bba793c7ba407e3502b4b7af152e494c265bb939404de370b765c85f15ba218875d2cb760701680d7f13e8172d9bf554b9f0ffce73601355fba3e3f20d6304c9d5099b132498bc8d1907776ecc0e23ca8e57d5668d0f21374b5f7ab24f17aa6c0c4bf5e554eb2b0216298720b3c668aac513ab809af37d2ec5e8b4a2781aff06aa77d46fdd43da9c538349073787de7b01a666a9375d5bd99286a3c93898eb7f9ce20744ce44343555cee3b04b500bb33f5438ca0f87ec611a8a8b5b00ff5336b60ddb3832b232f08b089a9ff61d04beedb0c8e5e8dbb5ff8abd30295545954dd0190718fccdd64bd158852cb5169cecdf650841d0ebcd55726c113222e170c69e08e6279c7b1e2fce9479e27c55576b502af6d31bbc731edd0aa7bf4132cf63975c3a5e5dfb9ae601df62cabcfdcd613ad243813b6b8d86d9cb189079f5da7457471babf2e0473a11a2f42542dde29c5433fcca97c6f8eb4acef29a80d449bebe844002b2b994638d25ab46bc519e8efc04a2293e146eaabc659cdc50f17cb76796e151ed0e082b64c6867867af6c1e64439e4132db5d231f33d7c0f8280b8d1fff9e3fb86e87112a3b7810f587438637f26deb6971e177017862fda9e5dfb32e0658e08d1efbf3417c6bb85af59543314aaea14fd8f612b9816475ad249670593ef999ae617901875ef6d9a61f0fd8420ed9ea5792b3b05f9bed,aee260e004377cb28af908e47c1c919006de056bae7655a77582f0a5a97de180b9cf8e7949b95e81b3ad2859c2ae0340e696d482c25d5dfb62360f458b88dbdd9381e74a826c76955b1278369fef4c6c84206dc49b9accb65e1a28ff1831f1137b85074fbe31278ca186fc991046c27e4e4ff650e9aa69ccb36856b08ef763292ab70f0ac5f60af5986bcb0ab5e10373da74717251b9b547f2f92d0a8fbe423e20390671f0754aeeae3f8ee626bc602e5c9a4f6432a7748a9364da3c5c7ff3d7549cfaa54ca7ddb1f0904dfcf11915da4c57eeb83ce90f597c0a3708cb81576f72cb4b9839316c11f665940e9471b9925261d44ab9950abd78b8715c1637f5110f21126bbb7e81cecfe627a3de2b72f70538db6e2f9923506399e9299c9e1e0f52be953802f8ac4b3cd4c3e1664eaf65f5b74730a055755c87a5508c3fcad04a6078a278d79613720424bd30cfb15a9685c17730e65a29b297674792eab7e344181692396685e9a3d0f45ce782154717d023327171f1536bd34b7b87c80367c013fc9a4881ee4b2e5234fe8325a2ed8a03593cc9634908ba793fc65ff97d1b2834eaffa7ae5a488061084ed23a38c17ec7bc0f923896aa5f28cdb533a45ecc1437d605742d54dbb4b77bde6e6cda9dae859aeab024014f20d126140bf6771f27a1633b81ae046ee600450a152b143de5de40467dc9bec3083f8d004fae4f1258")
	// fmt.Println(validCheck)
	fmt.Println("Hello, World!")
}

/*
func compareHashUsingArgonTwo(password []byte, hash string) bool {
	// Split the hash into its parts
	parts := strings.Split(hash, ",")
	memory, err := strconv.ParseUint(parts[0], 10, 32)
	if err != nil {
		return false
	}
	time, err := strconv.ParseUint(parts[1], 10, 32)
	if err != nil {
		return false
	}
	threads, err := strconv.ParseUint(parts[2], 10, 8)
	if err != nil {
		return false
	}
	salt, err := hex.DecodeString(parts[3])
	if err != nil {
		return false
	}
	decodedHash, err := hex.DecodeString(parts[4])
	if err != nil {
		return false
	}
	return subtle.ConstantTimeCompare(decodedHash, argon2.IDKey(password, salt, uint32(time), uint32(memory), uint8(threads), uint32(len(decodedHash)))) == 1
}
*/
