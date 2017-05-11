package open

import (
	"net"
	"fmt"
)

func check(e error) {
	if e != nil {
		fmt.Println(e)
		panic(e)
	}
}

func FindAddress(containerName string) string {
	addresses, err := net.LookupIP(containerName)
	check(err)
  return addresses[0].String()
}
