package main

import (
	"bytes"
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Get the content type of bytes
	fmt.Println(getContentTypeBasedOnBytes([]byte(`XN%KJtUTGkmDYQDzNRY@SRxc2!!%4&M3sm^f$Jmo*RE$Zb$by9gerfQk85z6e5!tYS@JimH4AyeHPr27ZHhX@jA3!4v8$n@MHhDHx%wfzJfmpoH$pXm6XsX%XEKt!X!&BDEe^kC*D&oL3@Hv56Yo2M6hmRhc@k4268yzR6dKiEyesLHTu&aiEmfxRk@gp#oXPNJF&p%&7%37%e!v2aq5ohx6Su6Q82Qy3Kc7m9mp!GmoQ$!W6n&!R@AF5Y34@mZENjpNX!#^u@XG4M5tG7max*@VjBPJN6K$HqNaaxD#*7aYc2wg!5V@$2Hjj&SugT8*3HDzgCTg#BKNP7ncQ^9hwm%7ys##T$@%qzhh&6ja@A7558^3&qiMMy4nYSsJG*89fYBqiRs5Zf#@@@&L$T%e@#ev6#p5FN#nutY2Dbr$JuWF$6c^xL28k9zJboy&r%&UTo9%^votw5!9%JALv!FBsKm$6#kD$cuhzQRNV#6dZLu8BvfdqbBM4X%8DZ^&CV42`)))
}

// Get the content type of bytes
func getContentTypeBasedOnBytes(content []byte) string {
	buffer := make([]byte, 512)
	_, err := io.ReadFull(bytes.NewReader(content), buffer)
	if err != nil {
		log.Fatalln(err)
	}
	return http.DetectContentType(buffer)
}
