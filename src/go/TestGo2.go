package main

import (
        "fmt"
	"flag"
        "os"
)

const RHSA_CVE_CODE string = "RHSA-2017:2423_CVE-2019-17571"

func main() {
    versionPtr := flag.Bool("version", false, "Print version information")
    flag.Parse()

    if *versionPtr {
        fixes()
        os.Exit(0)
    }

   fmt.Printf("hello world\n\n")
}

func fixes() {
    fmt.Printf("Fixes: %s\n\n", RHSA_CVE_CODE)
}
