#!/bin/bash

cat <<EOF > go.mod
module rod_github

go 1.16

require github.com/go-rod/rod v0.107.1
EOF

cat <<EOF > main.go
package main

import "github.com/go-rod/rod"

func main() {
    _ = rod.New().MustConnect()
}
EOF

go mod tidy
go run main.go

rm -f go.mod
rm -f go.sum
rm -f main.go
rm -f screenshot.png